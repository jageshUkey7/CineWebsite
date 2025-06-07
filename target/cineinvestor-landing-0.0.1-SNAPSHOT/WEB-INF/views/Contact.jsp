<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Contact | Cinevestor</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700&family=Playfair+Display:wght@400;500;600;700&display=swap">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        :root {
            --bg-gradient-1: #0f0c29;
            --bg-gradient-2: #302b63;
            --bg-gradient-3: #24243e;
            --accent-1: #FF3CAC;
            --accent-2: #784BA0;
            --accent-3: #2B86C5;
            --text-primary: #ffffff;
            --text-secondary: #b8c1ec;
            --card-bg: rgba(22, 28, 36, 0.85);
            --card-border: rgba(255, 255, 255, 0.1);
            --card-hover: rgba(255, 255, 255, 0.05);
            --transition: all 0.4s ease;
            --shadow-neon: 0 0 15px rgba(255, 60, 172, 0.5);
            --shadow-glow: 0 0 20px rgba(43, 134, 197, 0.5);
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            background: linear-gradient(135deg, var(--bg-gradient-1), var(--bg-gradient-2), var(--bg-gradient-3));
            color: var(--text-primary);
            font-family: 'Montserrat', sans-serif;
            overflow-x: hidden;
            line-height: 1.6;
        }

        h1, h2 {
            font-family: 'Playfair Display', serif;
            font-weight: 600;
        }

        .audition-hero-bg {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100vh;
            background: url('https://images.unsplash.com/photo-1489599849927-2ee91cede3ba?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80') center/cover no-repeat;
            opacity: 0.2;
            z-index: -1;
        }

        .audition-hero-content {
            text-align: center;
            padding: 8rem 2rem 3rem;
        }

        .audition-hero-content h1 {
            font-size: 3.5rem;
            background: linear-gradient(90deg, var(--text-primary), var(--accent-1));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .page-description {
            max-width: 700px;
            margin: 0 auto;
            color: var(--text-secondary);
            font-size: 1.1rem;
        }

        .main {
            display: flex;
            justify-content: center;
            align-items: flex-start;
            flex-wrap: wrap;
            gap: 2rem;
            padding: 0 5rem 4rem;
        }

        .container1,
        .container2 {
            flex: 1 1 400px;
            max-width: 600px;
        }

        .contact-info {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 1rem;
            margin-top: -3px;
        }

        .card {
            background: var(--card-bg);
            border: 1px solid var(--card-border);
            border-radius: 10px;
            padding: 1.4rem;
            display: flex;
            flex-direction: column;
            gap: 0.5rem;
            transition: var(--transition);
        }

        .card:hover {
            background: var(--card-hover);
            transform: translateY(-3px);
            box-shadow: var(--shadow-glow);
        }

        .card i {
            font-size: 1.4rem;
            color: var(--accent-3);
        }

        .section-title {
            margin-top: 1rem;
            font-size: 2rem;
            background: linear-gradient(90deg, var(--text-primary), var(--accent-1));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        /* Updated Social Section */
        .social {
            display: flex;
            gap: 1rem;
            margin-top: 1rem;
        }

        .social a {
            background: rgba(255, 255, 255, 0.05);
            width: 50px;
            height: 50px;
            font-size: 1.3rem;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 50%;
            border: 1px solid rgba(255, 255, 255, 0.1);
            color: #fff;
            transition: all 0.3s ease;
            text-decoration: none;
        }

        .social a:hover {
            background: linear-gradient(145deg, var(--accent-1), var(--accent-3));
            box-shadow: var(--shadow-neon), var(--shadow-glow);
            transform: translateY(-2px);
            border-color: transparent;
        }

        .map iframe {
            width: 100%;
            height: 24.5rem;
            border-radius: 10px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
            border: none;
        }

        @media (max-width: 768px) {
            .audition-hero-content h1 {
                font-size: 2.5rem;
            }

            .main {
                padding: 0 1rem 3rem;
            }

            .contact-info {
                grid-template-columns: 1fr;
            }

            .map iframe {
                height: 20rem;
            }
        }
    </style>
</head>
<body>
    <%@ include file="Navbar.jsp"%>
    <div class="audition-hero-bg"></div>

    <div class="audition-hero-content">
        <h1>Contact</h1>
        <p class="page-description">Get in touch with us for support, collaborations, or any inquiries. We're here to help you connect with the world of cinema.</p>
    </div>

    <div class="main">
        <div class="container1">
            <div class="contact-info">
                <div class="card">
                    <i class="fas fa-map-marker-alt"></i>
                    <p>Daya House, Khairlanji Road, Tiroda, Dist.Gondia-441911,Maharashtra</p>
                </div>
                <div class="card">
                    <i class="fas fa-phone-alt"></i>
                    <p>+91 9876543210<br>+91 8069578348</p>
                </div>
                <div class="card">
                    <i class="fas fa-envelope"></i>
                    <p>invest@cinevestor.in</p>
                    <p>help.cinevestor@gmail.com</p>
                </div>
                <div class="card">
                    <i class="fab fa-whatsapp"></i>
                    <p>+91 8069578348</p>
                </div>
            </div>

            <h2 class="section-title">Social</h2>
            <div class="social">
                <a href="https://www.instagram.com/cinevestor/"><i class="fab fa-instagram"></i></a>
                <a href="#"><i class="fab fa-twitter"></i></a>
                <a href="https://in.linkedin.com/company/vithal-vision"><i class="fab fa-linkedin-in"></i></a>
                <a href="https://www.facebook.com/cinevestor.in/"><i class="fab fa-facebook-f"></i></a>
            </div>
        </div>

        <div class="container2">
            <div class="map">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1857.188921728744!2d79.93521199999999!3d21.4143886!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a2b05007814bd39%3A0x8cf9e45d86856be5!2sDaya%20House!5e0!3m2!1sen!2sin!4v1746448124321!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
        </div>
    </div>
    <%@ include file="Footer.jsp"%>
</body>
</html>