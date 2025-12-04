<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>메모 앱</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }

        .container {
            background: white;
            border-radius: 20px;
            box-shadow: 0 20px 60px rgba(0, 0, 0, 0.3);
            padding: 40px;
            max-width: 600px;
            width: 100%;
        }

        h1 {
            color: #333;
            font-size: 2rem;
            margin-bottom: 10px;
            text-align: center;
        }

        .subtitle {
            color: #666;
            text-align: center;
            margin-bottom: 30px;
            font-size: 0.95rem;
        }

        .message {
            background: #e3f2fd;
            border-left: 4px solid #2196f3;
            padding: 12px 16px;
            margin-bottom: 20px;
            border-radius: 4px;
            color: #1565c0;
            font-weight: 500;
        }

        .message:empty {
            display: none;
        }

        .memo-form {
            background: #f8f9fa;
            padding: 25px;
            border-radius: 12px;
            margin-bottom: 30px;
        }

        .memo-form input[type="text"] {
            width: 100%;
            padding: 14px;
            border: 2px solid #e0e0e0;
            border-radius: 8px;
            font-size: 1rem;
            transition: all 0.3s ease;
            margin-bottom: 15px;
        }

        .memo-form input[type="text"]:focus {
            outline: none;
            border-color: #667eea;
            box-shadow: 0 0 0 3px rgba(102, 126, 234, 0.1);
        }

        .memo-form button {
            width: 100%;
            padding: 14px;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            border: none;
            border-radius: 8px;
            font-size: 1rem;
            font-weight: 600;
            cursor: pointer;
            transition: transform 0.2s ease, box-shadow 0.2s ease;
        }

        .memo-form button:hover {
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(102, 126, 234, 0.4);
        }

        .memo-form button:active {
            transform: translateY(0);
        }

        .memos-section {
            margin-top: 20px;
        }

        .memos-title {
            color: #333;
            font-size: 1.3rem;
            margin-bottom: 15px;
            padding-bottom: 10px;
            border-bottom: 2px solid #f0f0f0;
        }

        .memos-list {
            background: #fafafa;
            padding: 20px;
            border-radius: 10px;
            min-height: 100px;
            color: #555;
            line-height: 1.6;
        }

        .memos-list:empty::before {
            content: "작성된 메모가 없습니다.";
            color: #999;
            font-style: italic;
        }

        @media (max-width: 640px) {
            .container {
                padding: 25px;
            }

            h1 {
                font-size: 1.5rem;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>📝 메모 앱</h1>
        <p class="subtitle">간편하게 메모를 작성하고 관리하세요</p>

        <% if (request.getAttribute("msg") != null && !request.getAttribute("msg").toString().isEmpty()) { %>
            <div class="message">
                <%= request.getAttribute("msg") %>
            </div>
        <% } %>

        <div class="memo-form">
            <form method="post">
                <input type="text" name="content" placeholder="메모 내용을 입력하세요..." required>
                <button type="submit">메모 작성</button>
            </form>
        </div>

        <div class="memos-section">
            <h2 class="memos-title">저장된 메모</h2>
            <div class="memos-list">
                <%= request.getAttribute("memos") != null ? request.getAttribute("memos") : "" %>
            </div>
        </div>
    </div>
</body>
</html>