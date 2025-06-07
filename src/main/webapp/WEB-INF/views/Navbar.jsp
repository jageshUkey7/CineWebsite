<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Audition for Come in CDK | Cinevestor</title>
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
        
        /* Navigation */
        .navbar {
            position: fixed;
            top: 0;
            left: 0;
            height: 7rem;
            width: 100%;
            background: rgba(15, 12, 41, 0.8);
            backdrop-filter: blur(10px);
            z-index: 100;
            border-bottom: 1px solid var(--card-border);
            transition: var(--transition);
        }
        
        .navbar.scrolled {
            padding: 1rem 0;
            background: rgba(15, 12, 41, 0.95);
        }
        
        .nav-container {
            margin-top: -1rem;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        
        .logo {
            height:9.2rem;
            width: 10rem;
            
        }
        
        .logo:hover {
            filter: brightness(0) invert(1) drop-shadow(0 0 5px rgba(255, 255, 255, 0.7));
        }
        
        .nav-links {
            
            display: flex;
            gap: 2.8rem;
        }
        
        .nav-links a {
            color: var(--text-primary);
            text-decoration: none;
            font-weight: 500;
            font-size: 0.95rem;
            transition: var(--transition);
            position: relative;
             
        }
        
        .nav-links a::before {
            content: '';
            position: absolute;
            bottom: 0;
            left: 0;
            width: 0;
            height: 2px;
            background: linear-gradient(90deg, var(--accent-1), var(--accent-3));
            transition: var(--transition);
        }
        
        .nav-links a:hover {
            color: var(--accent-1);
        }
        
        .nav-links a:hover::before {
            width: 100%;
        }
        
        .nav-cta {
            display: flex;
            gap: 1.5rem;
        }
        
        .cta-button {
            background: linear-gradient(90deg, var(--accent-1), var(--accent-2));
            color: var(--text-primary);
            padding: 0.8rem 1.8rem;
            border-radius: 30px;
            font-weight: 600;
            text-decoration: none;
            transition: var(--transition);
            border: none;
            position: relative;
            overflow: hidden;
            z-index: 1;
            display: inline-block;
        }
        
        .cta-button::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 0;
            height: 100%;
            background: linear-gradient(90deg, var(--accent-2), var(--accent-3));
            transition: var(--transition);
            z-index: -1;
        }
        
        .cta-button:hover {
            box-shadow: var(--shadow-neon);
            transform: translateY(-3px);
        }
        
        .cta-button:hover::before {
            width: 100%;
        }
        
         
        
        /* Responsive */
        @media (max-width: 992px) {
            
            
            .nav-links {
                gap: 1.5rem;
            }
            
           
            
        }
        
        @media (max-width: 768px) {
            .navbar {
                padding: 1rem 0;
            }
            
            .nav-links {
                display: none;
            }
            
             
        }
    </style>
</head>
<body>
    <!-- Navigation -->
    <nav class="navbar">
        <div class="container nav-container">
            <img src="/images/logo.png" alt="Cinevestor" class="logo">
            <div class="nav-links">
                <a href="/">Home</a>
                <a href="About">About</a>
                <a href="Explore">Explore projects</a>
                <a href="Updates">Updates</a>
                <a href="Audition">Audition For Come in CDK</a>
                <a href="Contact">Contact</a>
            </div>
            <div class="nav-cta">
                <a href="#" class="cta-button">Invest Now</a>
            </div>
        </div>
    </nav>
    
</body>
</html>