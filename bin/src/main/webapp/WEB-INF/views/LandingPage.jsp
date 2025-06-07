<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cinevestor | Film Sponsorship Platform</title>
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
            --text-tertiary: #8892b0;
            --card-bg: rgba(22, 28, 36, 0.8);
            --card-border: rgba(255, 255, 255, 0.1);
            --card-hover: rgba(255, 255, 255, 0.05);
            --transition: all 0.4s cubic-bezier(0.25, 0.46, 0.45, 0.94);
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
            background-attachment: fixed;
            color: var(--text-primary);
            font-family: 'Montserrat', sans-serif;
            overflow-x: hidden;
            line-height: 1.6;
        }
        
        h1, h2, h3, h4, h5 {
            font-family: 'Playfair Display', serif;
            font-weight: 600;
            line-height: 1.2;
        }
        
        .container {
            max-width: 1400px;
            margin: 0 auto;
            padding: 0 2rem;
            position: relative;
            z-index: 1;
        }
        
        /* Decorative Elements */
        .decorative-circle {
            position: absolute;
            border-radius: 50%;
            background: radial-gradient(circle, var(--accent-1) 0%, rgba(255, 60, 172, 0) 70%);
            opacity: 0.3;
            filter: blur(60px);
            z-index: 0;
        }
        
        .circle-1 {
            top: 10%;
            right: 5%;
            width: 300px;
            height: 300px;
        }
        
        .circle-2 {
            bottom: 20%;
            left: 10%;
            width: 400px;
            height: 400px;
            background: radial-gradient(circle, var(--accent-3) 0%, rgba(43, 134, 197, 0) 70%);
        }
        
        .circle-3 {
            top: 40%;
            left: 30%;
            width: 200px;
            height: 200px;
            background: radial-gradient(circle, var(--accent-2) 0%, rgba(120, 75, 160, 0) 70%);
        }
        
        
        
        /* Hero Section */
        .hero {
            min-height: 100vh;
            display: flex;
            align-items: center;
            padding: 8rem 0 4rem;
            position: relative;
            overflow: hidden;
        }
        
        .hero-bg {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: url('https://images.unsplash.com/photo-1517604931442-7e0c8ed2963c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1614&q=80') center/cover;
            opacity: 0.2;
            z-index: -1;
            animation: zoomInOut 20s infinite alternate;
        }
        
        @keyframes zoomInOut {
            0% { transform: scale(1); }
            100% { transform: scale(1.05); }
        }
        
        .hero-content {
            max-width: 600px;
            position: relative;
        }
        
        .hero h1 {
            font-size: 4rem;
            margin-bottom: 1.5rem;
            line-height: 1.2;
            background: linear-gradient(90deg, var(--text-primary), var(--accent-1));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            text-fill-color: transparent;
        }
        
        .hero h1 span {
            display: block;
            background: linear-gradient(90deg, var(--accent-1), var(--accent-3));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            text-fill-color: transparent;
        }
        
        .hero p {
            font-size: 1.1rem;
            margin-bottom: 2.5rem;
            color: var(--text-secondary);
            line-height: 1.7;
        }
        
        .hero-buttons {
            display: flex;
            gap: 1.5rem;
        }
        
        .secondary-button {
            border: 2px solid;
            border-image: linear-gradient(90deg, var(--accent-1), var(--accent-3)) 1;
            color: var(--text-primary);
            padding: 0.8rem 1.8rem;
            border-radius: 30px;
            font-weight: 600;
            text-decoration: none;
            transition: var(--transition);
            background: transparent;
            position: relative;
            z-index: 1;
            display: inline-block;
        }
        
        .secondary-button::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 0;
            height: 100%;
            background: linear-gradient(90deg, rgba(255, 60, 172, 0.1), rgba(43, 134, 197, 0.1));
            transition: var(--transition);
            z-index: -1;
            border-radius: 28px;
        }
        
        .secondary-button:hover {
            box-shadow: var(--shadow-glow);
            transform: translateY(-3px);
        }
        
        .secondary-button:hover::before {
            width: 100%;
        }
        
        /* About Section */
        .about {
            padding: 5rem 0;
            position: relative;
            background: rgba(15, 12, 41, 0.5);
            backdrop-filter: blur(10px);
        }
        
        .section-header {
            text-align: center;
            margin-bottom: 3rem;
        }
        
        .section-title {
            font-size: 2.5rem;
            position: relative;
            display: inline-block;
            background: linear-gradient(90deg, var(--text-primary), var(--accent-1));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            text-fill-color: transparent;
            padding-bottom: 1rem;
        }
        
        .section-title::after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 50%;
            transform: translateX(-50%);
            width: 80px;
            height: 3px;
            background: linear-gradient(90deg, var(--accent-1), var(--accent-3));
        }
        
        .about-content {
            max-width: 800px;
            margin: 0 auto;
            text-align: center;
        }
        
        .about-content p {
            color: var(--text-secondary);
            margin-bottom: 1.5rem;
            line-height: 1.8;
        }
        
        /* Image Showcase Section */
        .image-showcase {
            padding: 4rem 0;
            background: linear-gradient(135deg, rgba(15, 12, 41, 0.8), rgba(48, 43, 99, 0.8));
            position: relative;
        }
        
        .showcase-container {
            display: flex;
            align-items: center;
            gap: 4rem;
        }
        
        .showcase-image {
            flex: 0 0 35%;
            height: 300px;
            border-radius: 10px;
            overflow: hidden;
            position: relative;
            border: 1px solid var(--card-border);
            box-shadow: var(--shadow-glow);
            transform: perspective(1000px) rotateY(-5deg);
            transition: var(--transition);
        }
        
        .showcase-image:hover {
            transform: perspective(1000px) rotateY(0deg);
        }
        
        .showcase-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.5s ease;
        }
        
        .showcase-image:hover img {
            transform: scale(1.05);
        }
        
        .showcase-content {
            flex: 1;
        }
        
        .showcase-content h2 {
            font-size: 2rem;
            margin-bottom: 1.5rem;
            background: linear-gradient(90deg, var(--accent-1), var(--accent-3));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            text-fill-color: transparent;
        }
        
        .showcase-content p {
            color: var(--text-secondary);
            margin-bottom: 1.5rem;
            line-height: 1.8;
            font-size: 1.05rem;
        }
        
        .showcase-features {
            margin: 2rem 0;
        }
        
        .feature-item {
            display: flex;
            align-items: flex-start;
            gap: 1rem;
            margin-bottom: 1rem;
            padding: 1.5rem;
            border-radius: 10px;
            background: var(--card-bg);
            border: 1px solid var(--card-border);
            transition: var(--transition);
        }
        
        .feature-item:hover {
            transform: translateY(-5px) translateX(5px);
            background: var(--card-hover);
            box-shadow: var(--shadow-neon);
            border-color: var(--accent-1);
        }
        
        .feature-icon {
            color: var(--accent-1);
            font-size: 1.2rem;
            margin-top: 0.2rem;
            background: rgba(255, 60, 172, 0.1);
            width: 40px;
            height: 40px;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 50%;
        }
        
        .feature-text {
            flex: 1;
        }
        
        .feature-text h4 {
            font-size: 1.1rem;
            margin-bottom: 0.3rem;
            color: var(--text-primary);
        }
        
        .feature-text p {
            color: var(--text-tertiary);
            font-size: 0.95rem;
            line-height: 1.6;
            margin-bottom: 0;
        }

        /* Project Gallery Section - Updated */
        .project-gallery {
            padding: 3rem 0;
            background: rgba(15, 12, 41, 0.5);
            backdrop-filter: blur(10px);
        }
        
        .projects-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
            gap: 2rem;
            margin-top: 2rem;
        }
        
        .project-card {
            background: var(--card-bg);
            border-radius: 10px;
            overflow: hidden;
            border: 1px solid var(--card-border);
            transition: var(--transition);
            position: relative;
        }
        
        .project-card:hover {
            transform: translateY(-10px);
            box-shadow: var(--shadow-glow);
            border-color: var(--accent-3);
        }
        
        .project-image {
            height: 200px;
            overflow: hidden;
            position: relative;
        }
        
        .project-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.5s ease;
        }
        
        .project-card:hover .project-image img {
            transform: scale(1.1);
        }
        
        .project-overlay {
            position: absolute;
            bottom: 0;
            left: 0;
            width: 100%;
            padding: 1.5rem;
            background: linear-gradient(to top, rgba(0,0,0,0.8) 0%, rgba(0,0,0,0) 100%);
            z-index: 1;
        }
        
        .project-content {
            padding: 1.5rem;
        }
        
        .project-title {
            font-size: 1.3rem;
            margin-bottom: 0.5rem;
            color: var(--text-primary);
        }
        
        .project-category {
            display: inline-block;
            background: linear-gradient(90deg, var(--accent-1), var(--accent-3));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            text-fill-color: transparent;
            font-size: 0.9rem;
            margin-bottom: 1rem;
            font-weight: 600;
        }
        
        .project-description {
            color: var(--text-tertiary);
            font-size: 0.95rem;
            margin-bottom: 1.5rem;
            line-height: 1.6;
        }
        
        .project-meta {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-top: 1rem;
        }
        
        .project-status {
            display: flex;
            align-items: center;
            gap: 0.5rem;
            font-size: 0.9rem;
        }
        
        .status-indicator {
            width: 10px;
            height: 10px;
            border-radius: 50%;
            background: var(--accent-1);
        }
        
        .status-indicator.post-production {
            background: var(--accent-3);
        }
        
        .status-indicator.pre-production {
            background: var(--accent-2);
        }
        
        .view-project {
            color: var(--text-primary);
            text-decoration: none;
            font-weight: 600;
            font-size: 0.9rem;
            transition: var(--transition);
            display: flex;
            align-items: center;
            gap: 0.5rem;
        }
        
        .view-project:hover {
            color: var(--accent-1);
        }
        
        /* Investment Highlight */
        .investment-highlight {
            padding: 5rem 0;
            background: linear-gradient(135deg, rgba(15, 12, 41, 0.8), rgba(48, 43, 99, 0.8));
            position: relative;
        }
        
        .highlight-card {
            background: var(--card-bg);
            padding: 3rem;
            border-radius: 10px;
            border: 1px solid var(--card-border);
            max-width: 900px;
            margin: 0 auto;
            position: relative;
            overflow: hidden;
            box-shadow: var(--shadow-glow);
        }
        
        .highlight-card::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 5px;
            height: 100%;
            background: linear-gradient(to bottom, var(--accent-1), var(--accent-3));
        }
        
        .highlight-card h2 {
            font-size: 2rem;
            margin-bottom: 1.5rem;
            background: linear-gradient(90deg, var(--accent-1), var(--accent-3));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            text-fill-color: transparent;
        }
        
        .highlight-card p {
            color: var(--text-secondary);
            margin-bottom: 1.5rem;
            line-height: 1.8;
        }
        
        /* Why Invest Section */
        .why-invest {
            padding: 5rem 0;
            background: rgba(15, 12, 41, 0.5);
            backdrop-filter: blur(10px);
            position: relative;
        }
        
        .features-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 2rem;
            margin-top: 3rem;
        }
        
        .feature-card {
            background: var(--card-bg);
            padding: 2.5rem;
            border-radius: 10px;
            transition: var(--transition);
            border: 1px solid var(--card-border);
            position: relative;
            overflow: hidden;
            z-index: 1;
        }
        
        .feature-card::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 5px;
            background: linear-gradient(90deg, var(--accent-1), var(--accent-3));
            transition: var(--transition);
        }
        
        .feature-card:hover {
            transform: translateY(-10px);
            box-shadow: var(--shadow-neon);
            border-color: var(--accent-1);
        }
        
        .feature-icon-lg {
            font-size: 2rem;
            background: linear-gradient(90deg, var(--accent-1), var(--accent-3));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            text-fill-color: transparent;
            margin-bottom: 1.5rem;
            width: 70px;
            height: 70px;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 50%;
            background: rgba(255, 60, 172, 0.1);
            border: 1px solid rgba(255, 60, 172, 0.3);
        }
        
        .feature-card h3 {
            font-size: 1.5rem;
            margin-bottom: 1rem;
            color: var(--text-primary);
        }
        
        .feature-card p {
            color: var(--text-tertiary);
            line-height: 1.7;
        }
        
        /* Investment Options */
        .investment-options {
            padding: 5rem 0;
            background: linear-gradient(135deg, rgba(15, 12, 41, 0.8), rgba(48, 43, 99, 0.8));
            position: relative;
            overflow: hidden;
        }
        
        .options-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 2rem;
            margin-top: 3rem;
        }
        
        .option-card {
            background: var(--card-bg);
            padding: 2.5rem;
            border-radius: 10px;
            transition: var(--transition);
            border: 1px solid var(--card-border);
            position: relative;
            overflow: hidden;
            z-index: 1;
        }
        
        .option-card::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: linear-gradient(135deg, rgba(255, 60, 172, 0.05), rgba(43, 134, 197, 0.05));
            z-index: -1;
            opacity: 0;
            transition: var(--transition);
        }
        
        .option-card:hover {
            transform: translateY(-10px) scale(1.02);
            box-shadow: var(--shadow-glow);
            border-color: var(--accent-3);
        }
        
        .option-card:hover::before {
            opacity: 1;
        }
        
        .option-card h3 {
            font-size: 1.5rem;
            margin-bottom: 1rem;
            background: linear-gradient(90deg, var(--accent-1), var(--accent-3));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            text-fill-color: transparent;
            display: inline-block;
        }
        
        .option-card ul {
            list-style: none;
            margin: 1.5rem 0;
        }
        
        .option-card li {
            margin-bottom: 0.8rem;
            color: var(--text-secondary);
            position: relative;
            padding-left: 1.5rem;
        }
        
        .option-card li::before {
            content: '\f00c';
            font-family: 'Font Awesome 6 Free';
            font-weight: 900;
            position: absolute;
            left: 0;
            background: linear-gradient(90deg, var(--accent-1), var(--accent-3));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            text-fill-color: transparent;
        }
        
        /* How to Invest */
        .how-to-invest {
            padding: 5rem 0;
            background: rgba(15, 12, 41, 0.5);
            backdrop-filter: blur(10px);
            position: relative;
        }
        
        .steps {
            display: flex;
            flex-direction: column;
            gap: 2rem;
            max-width: 800px;
            margin: 3rem auto 0;
        }
        
        .step {
            display: flex;
            gap: 2rem;
            background: var(--card-bg);
            padding: 2rem;
            border-radius: 10px;
            border: 1px solid var(--card-border);
            transition: var(--transition);
            position: relative;
            overflow: hidden;
        }
        
        .step::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 0;
            height: 100%;
            background: linear-gradient(90deg, rgba(255, 60, 172, 0.05), rgba(43, 134, 197, 0.05));
            transition: var(--transition);
            z-index: 0;
        }
        
        .step:hover {
            transform: translateY(-5px) translateX(5px);
            box-shadow: var(--shadow-neon);
            border-color: var(--accent-1);
        }
        
        .step:hover::before {
            width: 100%;
        }
        
        .step-number {
            background: linear-gradient(135deg, var(--accent-1), var(--accent-3));
            color: var(--text-primary);
            width: 50px;
            height: 50px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 1.5rem;
            font-weight: 700;
            flex-shrink: 0;
            position: relative;
            z-index: 1;
            box-shadow: var(--shadow-neon);
        }
        
        .step-content {
            position: relative;
            z-index: 1;
        }
        
        .step-content h3 {
            font-size: 1.5rem;
            margin-bottom: 1rem;
            color: var(--text-primary);
        }
        
        .step-content p {
            color: var(--text-tertiary);
            line-height: 1.7;
        }

        /* FAQ Section */
        .faq {
            padding: 5rem 0;
            background: rgba(15, 12, 41, 0.5);
            backdrop-filter: blur(10px);
            position: relative;
        }
        
        .faq-container {
            max-width: 800px;
            margin: 0 auto;
        }
        
        .faq-item {
            margin-bottom: 1rem;
            border: 1px solid var(--card-border);
            border-radius: 10px;
            overflow: hidden;
            transition: var(--transition);
        }
        
        .faq-item:hover {
            border-color: var(--accent-1);
        }
        
        .faq-question {
            padding: 1.5rem;
            background: var(--card-bg);
            display: flex;
            justify-content: space-between;
            align-items: center;
            cursor: pointer;
            transition: var(--transition);
        }
        
        .faq-question h3 {
            font-size: 1.1rem;
            color: var(--text-primary);
            margin-right: 1rem;
        }
        
        .faq-question i {
            color: var(--accent-1);
            transition: var(--transition);
        }
        
        .faq-question:hover {
            background: var(--card-hover);
        }
        
        .faq-answer {
            padding: 0 1.5rem;
            max-height: 0;
            overflow: hidden;
            transition: max-height 0.3s ease-out;
            background: rgba(22, 28, 36, 0.6);
        }
        
        .faq-answer p {
            padding: 0 0 1.5rem;
            color: var(--text-secondary);
            line-height: 1.7;
        }
        
        .faq-item.active .faq-question i {
            transform: rotate(180deg);
        }
        
        .faq-item.active .faq-answer {
            max-height: 300px;
        }
        
        /* CTA Section */
        .cta {
            padding: 5rem 0;
            text-align: center;
            background: linear-gradient(135deg, rgba(15, 12, 41, 0.8), rgba(48, 43, 99, 0.8));
            position: relative;
            overflow: hidden;
        }
        
        .cta::before {
            content: '';
            position: absolute;
            top: -100px;
            right: -100px;
            width: 300px;
            height: 300px;
            border-radius: 50%;
            background: radial-gradient(circle, var(--accent-1) 0%, rgba(255, 60, 172, 0) 70%);
            opacity: 0.3;
            filter: blur(60px);
        }
        
        .cta::after {
            content: '';
            position: absolute;
            bottom: -100px;
            left: -100px;
            width: 300px;
            height: 300px;
            border-radius: 50%;
            background: radial-gradient(circle, var(--accent-3) 0%, rgba(43, 134, 197, 0) 70%);
            opacity: 0.3;
            filter: blur(60px);
        }
        
        .cta h2 {
            font-size: 2.5rem;
            margin-bottom: 1.5rem;
            background: linear-gradient(90deg, var(--text-primary), var(--accent-1));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            text-fill-color: transparent;
        }
        
        .cta p {
            color: var(--text-secondary);
            max-width: 700px;
            margin: 0 auto 2.5rem;
            line-height: 1.7;
        }
         
        /* Make in India and DPIIT Badges */
        .badges {
            display: flex;
            gap: 1.5rem;
            align-items: center;
            margin-top: 1.5rem;
        }
        
        .badge {
            display: flex;
            align-items: center;
            gap: 0.5rem;
            font-size: 0.9rem;
        }
        
        .badge img {
            height: 30px;
        }
        
        .company-info {
            margin-top: 1.5rem;
            font-size: 0.8rem;
            color: var(--text-tertiary);
            line-height: 1.6;
        }
        
        /* Responsive */
        @media (max-width: 992px) {
            .hero h1 {
                font-size: 3rem;
            }
            
            
            .showcase-container {
                flex-direction: column;
            }
            
            .showcase-image {
                width: 100%;
                flex: 1 1 auto;
                transform: perspective(1000px) rotateY(0deg);
            }
        }
        
        @media (max-width: 768px) {
           
            
            .hero {
                padding-top: 6rem;
                text-align: center;
            }
            
            .hero h1 {
                font-size: 2.5rem;
            }
            
            .hero-buttons {
                flex-direction: column;
                gap: 1rem;
                align-items: center;
            }
            
            .section-title {
                font-size: 2rem;
            }
            
             
            
            .step {
                flex-direction: column;
                gap: 1rem;
            }
            
            .badges {
                flex-direction: column;
                align-items: flex-start;
            }
        }
        
        /* Animation Keyframes */
        @keyframes float {
            0% { transform: translateY(0px); }
            50% { transform: translateY(-10px); }
            100% { transform: translateY(0px); }
        }
        
        @keyframes pulse {
            0% { box-shadow: 0 0 0 0 rgba(255, 60, 172, 0.4); }
            70% { box-shadow: 0 0 0 10px rgba(255, 60, 172, 0); }
            100% { box-shadow: 0 0 0 0 rgba(255, 60, 172, 0); }
        }
    </style>
</head>
<body>
    <!-- Decorative Elements -->
    <div class="decorative-circle circle-1"></div>
    <div class="decorative-circle circle-2"></div>
    <div class="decorative-circle circle-3"></div>
    
    <%@ include file="Navbar.jsp"%>
    
    <!-- Hero Section -->
    <section class="hero">
        <div class="hero-bg"></div>
        <div class="container">
            <div class="hero-content">
                <h1>Welcome to <span>Cinevestor</span></h1>
                <p>Where the art of storytelling meets the spirit of support. We've redefined the investment landscape for film projects, steering away from traditional equity models.</p>
                <div class="hero-buttons">
                    <a href="Explore" class="cta-button">Explore Projects</a>
                    <a href="#" class="secondary-button">Learn More</a>
                </div>
            </div>
        </div>
    </section>
    
    <!-- About Section -->
    <section class="about">
        <div class="container">
            <div class="section-header">
                <h2 class="section-title">About Us</h2>
            </div>
            <div class="about-content">
                <p>At Cinevestor, we're a passionate team dedicated to bringing distinctive and captivating stories to life through the magic of cinema. Embark on a journey with us as we traverse the realms of creativity and finance, seamlessly blending the enchantment of storytelling with the strategic realm of investment.</p>
                <p>We embrace the transformative power of film to inspire, entertain, and provoke thought. Our dedicated team brings a wealth of experience to the table, ensuring that each project is meticulously crafted with precision and passion.</p>
                <p>Whether you're a cinephile looking to be part of something extraordinary or an individual seeking a unique venture, Cinevestor invites you to join us on this cinematic adventure.</p>
            </div>
        </div>
    </section>
    
    <!-- Image Showcase Section -->
    <section class="image-showcase">
        <div class="container showcase-container">
            <div class="showcase-image">
                <img src="https://images.unsplash.com/photo-1489599849927-2ee91cede3ba?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80" alt="Film Production">
            </div>
            <div class="showcase-content">
                <h2>Current Production: "Midnight Whispers"</h2>
                <p>Our flagship thriller project currently in production, showcasing the quality and scale of films we create with our investors' support. This psychological thriller explores the dark corners of human nature through an innovative narrative structure.</p>
                
                <div class="showcase-features">
                    <div class="feature-item">
                        <div class="feature-icon">
                            <i class="fas fa-calendar-alt"></i>
                        </div>
                        <div class="feature-text">
                            <h4>Production Timeline</h4>
                            <p>12-18 month cycle with quarterly investor updates and exclusive behind-the-scenes access.</p>
                        </div>
                    </div>
                    <div class="feature-item">
                        <div class="feature-icon">
                            <i class="fas fa-chart-line"></i>
                        </div>
                        <div class="feature-text">
                            <h4>Projected Returns</h4>
                            <p>Anticipated 18-25% ROI based on distribution agreements and market projections.</p>
                        </div>
                    </div>
                    <div class="feature-item">
                        <div class="feature-icon">
                            <i class="fas fa-award"></i>
                        </div>
                        <div class="feature-text">
                            <h4>Talent Involved</h4>
                            <p>Acclaimed director and emerging stars with proven box office appeal.</p>
                        </div>
                    </div>
                </div>
                
                <a href="#" class="cta-button">View Full Project Details</a>
            </div>
        </div>
    </section>
    
    <!-- Project Gallery Section - Updated -->
    <section class="project-gallery">
        <div class="container">
            <div class="section-header">
                <h2 class="section-title">Featured Projects</h2>
            </div>
            <div class="projects-grid">
                <div class="project-card">
                    <div class="project-image">
                        <img src="https://images.unsplash.com/photo-1542204165-65bf26472b9b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1074&q=80" alt="Project 1">
                        <div class="project-overlay"></div>
                    </div>
                    <div class="project-content">
                        <span class="project-category">Thriller</span>
                        <h3 class="project-title">Midnight Whispers</h3>
                        <p class="project-description">A psychological thriller exploring the dark corners of human nature through an innovative narrative structure.</p>
                        <div class="project-meta">
                            <div class="project-status">
                                <span class="status-indicator"></span>
                                <span>In Production</span>
                            </div>
                            <a href="#" class="view-project">
                                View Project <i class="fas fa-arrow-right"></i>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="project-card">
                    <div class="project-image">
                        <img src="https://images.unsplash.com/photo-1518173946687-a4c8892bbd9f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1074&q=80" alt="Project 2">
                        <div class="project-overlay"></div>
                    </div>
                    <div class="project-content">
                        <span class="project-category">Drama</span>
                        <h3 class="project-title">The Last Sunset</h3>
                        <p class="project-description">An emotional journey of self-discovery set against the backdrop of rural India.</p>
                        <div class="project-meta">
                            <div class="project-status">
                                <span class="status-indicator post-production"></span>
                                <span>Post-Production</span>
                            </div>
                            <a href="#" class="view-project">
                                View Project <i class="fas fa-arrow-right"></i>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="project-card">
                    <div class="project-image">
                        <img src="https://images.unsplash.com/photo-1485846234645-a62644f84728?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1159&q=80" alt="Project 3">
                        <div class="project-overlay"></div>
                    </div>
                    <div class="project-content">
                        <span class="project-category">Comedy</span>
                        <h3 class="project-title">City of Dreams</h3>
                        <p class="project-description">A lighthearted take on the struggles of young professionals in metropolitan India.</p>
                        <div class="project-meta">
                            <div class="project-status">
                                <span class="status-indicator"></span>
                                <span>In Production</span>
                            </div>
                            <a href="#" class="view-project">
                                View Project <i class="fas fa-arrow-right"></i>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="project-card">
                    <div class="project-image">
                        <img src="https://images.unsplash.com/photo-1515634928627-2a4e0dae3ddf?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80" alt="Project 4">
                        <div class="project-overlay"></div>
                    </div>
                    <div class="project-content">
                        <span class="project-category">Documentary</span>
                        <h3 class="project-title">Voices Unheard</h3>
                        <p class="project-description">Exploring untold stories from marginalized communities across India.</p>
                        <div class="project-meta">
                            <div class="project-status">
                                <span class="status-indicator pre-production"></span>
                                <span>Pre-Production</span>
                            </div>
                            <a href="#" class="view-project">
                                View Project <i class="fas fa-arrow-right"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <!-- Investment Highlight -->
    <section class="investment-highlight">
        <div class="container">
            <div class="highlight-card">
                <h2>Film Sponsorship Opportunity</h2>
                <p>Explore the chance to support our film project and potentially achieve returns of up to 25% within a brief period of 12-18 months. It's important to note that this investment opportunity does not entail acquiring equity or ownership stakes in the project.</p>
                <p>Instead, you'll be participating as a valued supporter, gaining exclusive benefits and contributing to the realization of our creative vision. Take a step into the world of film sponsorship and discover the unique rewards it offers.</p>
                <a href="Explore" class="cta-button">View Current Projects</a>
            </div>
        </div>
    </section>
    
    <!-- Why Invest Section -->
    <section class="why-invest">
        <div class="container">
            <div class="section-header">
                <h2 class="section-title">Why Invest With Us</h2>
            </div>
            <div class="features-grid">
                <div class="feature-card">
                    <div class="feature-icon-lg">
                        <i class="fas fa-chart-line"></i>
                    </div>
                    <h3>Attractive Returns</h3>
                    <p>Potential returns of up to 25% within 12-18 months, with structured payout schedules based on project success.</p>
                </div>
                <div class="feature-card">
                    <div class="feature-icon-lg">
                        <i class="fas fa-film"></i>
                    </div>
                    <h3>Creative Participation</h3>
                    <p>Be part of the filmmaking process without the complexities of equity ownership or production responsibilities.</p>
                </div>
                <div class="feature-card">
                    <div class="feature-icon-lg">
                        <i class="fas fa-gem"></i>
                    </div>
                    <h3>Exclusive Benefits</h3>
                    <p>Receive unique perks including credits, premiere access, and behind-the-scenes content based on your support level.</p>
                </div>
            </div>
        </div>
    </section>
    
    <!-- Investment Options -->
    <section class="investment-options">
        <div class="container">
            <div class="section-header">
                <h2 class="section-title">Investment Opportunities</h2>
            </div>
            <div class="options-grid">
                <div class="option-card">
                    <h3>Film Sponsorship</h3>
                    <p>Elevate your involvement by becoming an official sponsor of our upcoming film and web series.</p>
                    <ul>
                        <li>Prominent logo placement and credits</li>
                        <li>Exclusive behind-the-scenes access</li>
                        <li>Invitations to premiere events</li>
                        <li>Potential returns up to 15-20%</li>
                    </ul>
                    <a href="#" class="cta-button">Learn More</a>
                </div>
                <div class="option-card">
                    <h3>Executive Producer</h3>
                    <p>Attain recognition as an Executive Producer in the film credits.</p>
                    <ul>
                        <li>VIP credit placement</li>
                        <li>Participation in key decisions</li>
                        <li>Exclusive screenings</li>
                        <li>Potential returns up to 20-25%</li>
                    </ul>
                    <a href="#" class="cta-button">Learn More</a>
                </div>
                <div class="option-card">
                    <h3>Premium Investor</h3>
                    <p>Engage with our project at the highest level with exclusive benefits.</p>
                    <ul>
                        <li>Share of film's profits</li>
                        <li>Exclusive updates and content</li>
                        <li>Limited-edition merchandise</li>
                        <li>Potential returns up to 25%+</li>
                    </ul>
                    <a href="#" class="cta-button">Learn More</a>
                </div>
            </div>
        </div>
    </section>
    
    <!-- How to Invest -->
    <section class="how-to-invest">
        <div class="container">
            <div class="section-header">
                <h2 class="section-title">How to Invest</h2>
            </div>
            <div class="steps">
                <div class="step">
                    <div class="step-number">1</div>
                    <div class="step-content">
                        <h3>Explore Support Tiers</h3>
                        <p>Review our available investment options and select the level that aligns with your interests and budget. Each tier offers different benefits and potential returns.</p>
                    </div>
                </div>
                <div class="step">
                    <div class="step-number">2</div>
                    <div class="step-content">
                        <h3>Secure Your Contribution</h3>
                        <p>Complete our simple investment process through our secure platform. We'll guide you through the paperwork and payment process.</p>
                    </div>
                </div>
                <div class="step">
                    <div class="step-number">3</div>
                    <div class="step-content">
                        <h3>Join the Journey</h3>
                        <p>Once invested, you'll receive regular updates, exclusive content, and invitations to special events as we bring the project to life.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- FAQ Section -->
    <section class="faq">
        <div class="container">
            <div class="section-header">
                <h2 class="section-title">Frequently Asked Questions</h2>
            </div>
            <div class="faq-container">
                <div class="faq-item">
                    <div class="faq-question">
                        <h3>What makes Cinevestor's investment model unique?</h3>
                        <i class="fas fa-chevron-down"></i>
                    </div>
                    <div class="faq-answer">
                        <p>Cinevestor offers a distinctive sponsorship model rather than traditional equity investment. This allows supporters to participate in film projects with potential returns without the complexities of ownership stakes or production responsibilities.</p>
                    </div>
                </div>
                <div class="faq-item">
                    <div class="faq-question">
                        <h3>How can I contribute to a film project on Cinevestor?</h3>
                        <i class="fas fa-chevron-down"></i>
                    </div>
                    <div class="faq-answer">
                        <p>You can contribute by selecting one of our sponsorship tiers (Film Sponsor, Executive Producer, or Premium Investor) and completing the secure investment process through our platform. Each tier offers different benefits and potential returns.</p>
                    </div>
                </div>
                <div class="faq-item">
                    <div class="faq-question">
                        <h3>What are the benefits of Film Sponsorship?</h3>
                        <i class="fas fa-chevron-down"></i>
                    </div>
                    <div class="faq-answer">
                        <p>Film Sponsors receive prominent logo placement, credits in the film, exclusive behind-the-scenes access, invitations to premiere events, and potential returns of 15-20% based on project success.</p>
                    </div>
                </div>
                <div class="faq-item">
                    <div class="faq-question">
                        <h3>What is the significance of Executive Producer Credits?</h3>
                        <i class="fas fa-chevron-down"></i>
                    </div>
                    <div class="faq-answer">
                        <p>Executive Producer credits provide VIP recognition in the film's credits, participation in key creative decisions, exclusive screenings, and potential returns of 20-25%. This tier offers a more engaged experience with the project.</p>
                    </div>
                </div>
                <div class="faq-item">
                    <div class="faq-question">
                        <h3>How do Investor Benefits work?</h3>
                        <i class="fas fa-chevron-down"></i>
                    </div>
                    <div class="faq-answer">
                        <p>Benefits vary by investment tier but typically include a combination of financial returns, exclusive content, premiere access, merchandise, and creative participation opportunities. Higher tiers offer more substantial benefits and potential returns.</p>
                    </div>
                </div>
                <div class="faq-item">
                    <div class="faq-question">
                        <h3>How do I invest in Cinevestor and become a part of the community?</h3>
                        <i class="fas fa-chevron-down"></i>
                    </div>
                    <div class="faq-answer">
                        <p>Simply select your preferred investment option, complete the secure contribution process, and you'll immediately gain access to our investor community with regular updates and exclusive content.</p>
                    </div>
                </div>
                <div class="faq-item">
                    <div class="faq-question">
                        <h3>What should I review before contributing to Cinevestor?</h3>
                        <i class="fas fa-chevron-down"></i>
                    </div>
                    <div class="faq-answer">
                        <p>We recommend reviewing our Terms & Conditions, Risk Disclosure documents, and the specific details of each project. Film investments carry inherent risks, and it's important to understand these before participating.</p>
                    </div>
                </div>
                <div class="faq-item">
                    <div class="faq-question">
                        <h3>How can I get in touch if I have further questions?</h3>
                        <i class="fas fa-chevron-down"></i>
                    </div>
                    <div class="faq-answer">
                        <p>Our team is available at invest@cinevestor.in or +91 9876543210 to answer any questions about our investment opportunities and guide you through the process.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <!-- CTA Section -->
    <section class="cta">
        <div class="container">
            <h2>Ready to Join Our Cinematic Journey?</h2>
            <p>Become part of an exciting film project while potentially earning attractive returns. Our team is ready to guide you through the investment process and answer any questions.</p>
            <a href="#" class="cta-button">Start Investing Now</a>
        </div>
    </section>
    
    <%@ include file="Footer.jsp"%>

    <script>
        
        // FAQ Accordion
        const faqItems = document.querySelectorAll('.faq-item');
        faqItems.forEach(item => {
            const question = item.querySelector('.faq-question');
            question.addEventListener('click', () => {
                item.classList.toggle('active');
                
                // Close other open items
                faqItems.forEach(otherItem => {
                    if (otherItem !== item && otherItem.classList.contains('active')) {
                        otherItem.classList.remove('active');
                    }
                });
            });
        });
    </script>
</body>
</html>