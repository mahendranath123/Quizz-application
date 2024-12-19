<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*, java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Science Quiz Results</title>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #1a1a1a;
            margin: 0;
            padding: 20px;
            display: flex;
            justify-content: center;
            align-items: flex-start;
            min-height: 100vh;
        }
        .container {
            background: #fff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            max-width: 900px;
            width: 90%;
            transition: transform 0.3s ease-in-out;
        }
        h1 {
            margin-top: 0;
            color: #444;
            font-size: 2.5em;
            font-weight: bold;
            text-align: center;
        }
        .score-summary {
            margin: 20px 0;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .score-summary div {
            background: #e9e9e9;
            border-radius: 10px;
            padding: 20px;
            width: 22%;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: all 0.3s ease;
        }
        .score-summary div:hover {
            transform: translateY(-5px);
        }
        .score-summary div h2 {
            margin: 0;
            color: #9a4292;
            font-size: 1.5rem;
        }
        .score-summary div p {
            font-size: 1.2rem;
            margin: 10px 0;
        }
        .report-card {
            margin-top: 20px;
        }
        .report-details table {
            border-collapse: collapse;
            width: 100%;
            margin-bottom: 20px;
        }
        .report-details th, .report-details td {
            padding: 10px;
            text-align: center;
            border-bottom: 1px solid #ddd;
        }
        .report-details th {
            background: #9a4292;
            color: #fff;
        }
        .report-details tr:nth-child(even) {
            background: #f2f2f2;
        }
        .correct td {
            background-color: #d4edda !important;
            color: #155724;
        }
        .wrong td {
            background-color: #f8d7da !important;
            color: #721c24;
        }
        .correct-answer {
            font-weight: bold;
            color: #155724;
        }
        .selected-correct {
            background-color: #d4edda;
            font-weight: bold;
        }
        .review-button {
            background-color: #9a4292;
            color: white;
            border: none;
            padding: 15px 30px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 20px 2px;
            cursor: pointer;
            border-radius: 20px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: all 0.3s ease;
        }
        .review-button:hover {
            background-color: #81267a;
            box-shadow: 0 8px 10px rgba(0, 0, 0, 0.2);
        }
        .review-questions {
            display: none;
        }
    </style>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
    <%
        String url = "jdbc:mysql://localhost:3306/quiz";
        String user = "root";
        String password = "root";
        int totalQuestions = 0;
        int correctCount = 0;
        int wrongCount = 0;
        List<Map<String, Object>> questionDetails = new ArrayList<>();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url, user, password);

            // Get user answers and correct answers for the science quiz
            PreparedStatement userAnswersStmt = conn.prepareStatement(
                "SELECT sq.question_id, sq.question, sq.opt1, sq.opt2, sq.opt3, sq.opt4, sq.correct_option, " +
                "COALESCE(ua.selected_option, -1) AS selected_option " +
                "FROM science_questions sq " +
                "LEFT JOIN scienceuser_answers ua ON sq.question_id = ua.question_id"
            );
            ResultSet userAnswersRs = userAnswersStmt.executeQuery();

            Set<Integer> seenQuestions = new HashSet<>();

            while (userAnswersRs.next()) {
                int questionId = userAnswersRs.getInt("question_id");
                if (seenQuestions.contains(questionId)) continue;

                seenQuestions.add(questionId);

                String question = userAnswersRs.getString("question");
                int selectedOption = userAnswersRs.getInt("selected_option");
                int correctOption = userAnswersRs.getInt("correct_option");
                String opt1 = userAnswersRs.getString("opt1");
                String opt2 = userAnswersRs.getString("opt2");
                String opt3 = userAnswersRs.getString("opt3");
                String opt4 = userAnswersRs.getString("opt4");

                Map<String, Object> questionDetail = new HashMap<>();
                questionDetail.put("question", question);
                questionDetail.put("selectedOption", selectedOption);
                questionDetail.put("correctOption", correctOption);
                questionDetail.put("opt1", opt1);
                questionDetail.put("opt2", opt2);
                questionDetail.put("opt3", opt3);
                questionDetail.put("opt4", opt4);

                if (selectedOption == correctOption) {
                    correctCount++;
                } else {
                    wrongCount++;
                }

                questionDetails.add(questionDetail);
                totalQuestions++;
            }

            userAnswersRs.close();
            userAnswersStmt.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        int percentage = totalQuestions > 0 ? (int) ((double) correctCount / totalQuestions * 100) : 0;
    %>
    <div class="container">
        <h1>Science Quiz Results</h1>
        <div class="score-summary">
            <div>
                <h2>Total Questions</h2>
                <p><%= totalQuestions %></p>
            </div>
            <div>
                <h2>Correct Answers</h2>
                <p><%= correctCount %></p>
            </div>
            <div>
                <h2>Wrong Answers</h2>
                <p><%= wrongCount %></p>
            </div>
            <div>
                <h2>Percentage</h2>
                <p><%= percentage %> %</p>
                <canvas id="scoreChart" width="50" height="50"></canvas>
            </div>
        </div>
        <button class="review-button" onclick="toggleReviewQuestions()">Review Questions</button>
        <div class="report-card">
            <div class="report-details">
                <div class="review-questions">
                    <h2>Review Questions</h2>
                    <table>
                        <thead>
                            <tr>
                                <th>Question</th>
                                <th>Selected Option</th>
                                <th>Correct Option</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                for (Map<String, Object> questionDetail : questionDetails) {
                                    String question = (String) questionDetail.get("question");
                                    int selectedOption = (int) questionDetail.get("selectedOption");
                                    int correctOption = (int) questionDetail.get("correctOption");
                                    String opt1 = (String) questionDetail.get("opt1");
                                    String opt2 = (String) questionDetail.get("opt2");
                                    String opt3 = (String) questionDetail.get("opt3");
                                    String opt4 = (String) questionDetail.get("opt4");

                                    String selectedOptionText = "None";
                                    if (selectedOption == 1) selectedOptionText = opt1;
                                    else if (selectedOption == 2) selectedOptionText = opt2;
                                    else if (selectedOption == 3) selectedOptionText = opt3;
                                    else if (selectedOption == 4) selectedOptionText = opt4;

                                    String correctOptionText = "";
                                    if (correctOption == 1) correctOptionText = opt1;
                                    else if (correctOption == 2) correctOptionText = opt2;
                                    else if (correctOption == 3) correctOptionText = opt3;
                                    else if (correctOption == 4) correctOptionText = opt4;

                                    String rowClass = (selectedOption == correctOption) ? "correct" : "wrong";
                                    if (selectedOption == -1) {
                                        rowClass = "wrong";
                                    }
                                    String selectedClass = (selectedOption == correctOption) ? "selected-correct" : "";
                            %>
                            <tr class="<%= rowClass %>">
                                <td><%= question %></td>
                                <td class="<%= selectedClass %>"><%= selectedOptionText %></td>
                                <td class="correct-answer"><%= correctOptionText %></td>
                            </tr>
                            <%
                                }
                            %>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <script>
        function toggleReviewQuestions() {
            const reviewQuestions = document.querySelector('.review-questions');
            reviewQuestions.style.display = reviewQuestions.style.display === 'none' ? 'block' : 'none';
        }

        // Chart.js script
        document.addEventListener('DOMContentLoaded', function () {
            var ctx = document.getElementById('scoreChart').getContext('2d');
            var scoreChart = new Chart(ctx, {
                type: 'doughnut',
                data: {
                    labels: ['Correct', 'Wrong'],
                    datasets: [{
                        data: [<%= correctCount %>, <%= wrongCount %>],
                        backgroundColor: ['#4caf50', '#f44336'],
                        hoverBackgroundColor: ['#66bb6a', '#e57373']
                    }]
                },
                options: {
                    responsive: true,
                    legend: {
                        display: false
                    },
                    cutoutPercentage: 70
                }
            });
        });
    </script>
</body>
</html>