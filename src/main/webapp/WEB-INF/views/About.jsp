<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us | Cinevestor | Film Sponsorship Platform</title>
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
        .page-hero {
            min-height: 60vh;
            display: flex;
            align-items: center;
            padding: 8rem 0 4rem;
            position: relative;
            overflow: hidden;
            text-align: center;
        }
        
        .page-hero-bg {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: url('https://images.unsplash.com/photo-1489599849927-2ee91cede3ba?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80') center/cover;
            opacity: 0.2;
            z-index: -1;
        }
        
        .page-hero-content {
            width: 100%;
        }
        
        .page-hero h1 {
            font-size: 4rem;
            margin-bottom: 1.5rem;
            line-height: 1.2;
            background: linear-gradient(90deg, var(--text-primary), var(--accent-1));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            text-fill-color: transparent;
        }
        
        .page-hero p {
            font-size: 1.2rem;
            color: var(--text-secondary);
            max-width: 800px;
            margin: 0 auto;
        }
        
        /* About Content */
        .about-section {
            padding: 5rem 0;
            position: relative;
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
            max-width: 900px;
            margin: 0 auto;
        }
        
        .about-content h2 {
            font-size: 1.8rem;
            margin: 2.5rem 0 1.5rem;
            background: linear-gradient(90deg, var(--accent-1), var(--accent-3));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            text-fill-color: transparent;
        }
        
        .about-content p {
            color: var(--text-secondary);
            margin-bottom: 1.5rem;
            line-height: 1.8;
            font-size: 1.05rem;
        }
        
        .about-content ul {
            margin: 1.5rem 0;
            padding-left: 2rem;
        }
        
        .about-content li {
            color: var(--text-secondary);
            margin-bottom: 0.8rem;
            line-height: 1.7;
        }
        
        /* Team Section */
        .team-section {
            padding: 5rem 0;
            background: rgba(15, 12, 41, 0.5);
            backdrop-filter: blur(10px);
        }
        
        .team-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 2rem;
            margin-top: 3rem;
        }
        
        .team-card {
            background: var(--card-bg);
            padding: 2rem;
            border-radius: 10px;
            text-align: center;
            transition: var(--transition);
            border: 1px solid var(--card-border);
        }
        
        .team-card:hover {
            transform: translateY(-10px);
            box-shadow: var(--shadow-neon);
            border-color: var(--accent-1);
        }
        
        .team-image {
            width: 150px;
            height: 150px;
            border-radius: 50%;
            object-fit: cover;
            margin: 0 auto 1.5rem;
            border: 3px solid var(--accent-1);
        }
        
        .team-card h3 {
            font-size: 1.3rem;
            margin-bottom: 0.5rem;
            color: var(--text-primary);
        }
        
        .team-card p {
            color: var(--accent-3);
            margin-bottom: 1rem;
            font-weight: 500;
        }
        
        .team-card .social-links {
            display: flex;
            justify-content: center;
            gap: 1rem;
        }
        
        .team-card .social-links a {
            color: var(--text-primary);
            font-size: 1rem;
            transition: var(--transition);
        }
        
        .team-card .social-links a:hover {
            color: var(--accent-1);
        }
        
        /* Values Section */
        .values-section {
            padding: 5rem 0;
            background: linear-gradient(135deg, rgba(15, 12, 41, 0.8), rgba(48, 43, 99, 0.8));
        }
        
        .values-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 2rem;
            margin-top: 3rem;
        }
        
        .value-card {
            background: var(--card-bg);
            padding: 2.5rem;
            border-radius: 10px;
            transition: var(--transition);
            border: 1px solid var(--card-border);
            position: relative;
            overflow: hidden;
        }
        
        .value-card::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 5px;
            height: 100%;
            background: linear-gradient(to bottom, var(--accent-1), var(--accent-3));
        }
        
        .value-card h3 {
            font-size: 1.5rem;
            margin-bottom: 1rem;
            color: var(--text-primary);
        }
        
        .value-card p {
            color: var(--text-tertiary);
            line-height: 1.7;
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
        
      
        @media (max-width: 768px) {
            
            
            .page-hero {
                padding-top: 6rem;
            }
            
            .page-hero h1 {
                font-size: 2.5rem;
            }
            
            .section-title {
                font-size: 2rem;
            }
            
            
            
            .badges {
                flex-direction: column;
                align-items: flex-start;
            }
        }
    </style>
</head>
<body>

    <%@ include file="Navbar.jsp"%>
   
    <!-- Hero Section -->
    <section class="page-hero">
        <div class="page-hero-bg"></div>
        <div class="container">
            <div class="page-hero-content">
                <h1>About Cinevestor</h1>
                <p>Where cinematic dreams come to life through innovative sponsorship and community support</p>
            </div>
        </div>
    </section>
    
    <!-- About Content -->
    <section class="about-section">
        <div class="container">
            <div class="about-content">
                <h2>Welcome to Cinevestor.in</h2>
                <p>At Cinevestor, we are more than just a crowdfunding platform; we are a community of film enthusiasts, creators, and investors dedicated to bringing captivating stories to the big screen.</p>
                
                <h2>Our Vision</h2>
                <p>At the heart of Cinevestor's vision is a commitment to democratizing the filmmaking process. We believe that great stories can come from anywhere, and by providing a platform for creators to connect directly with their audience, we aim to empower storytellers to transform their visions into reality.</p>
                
                <h2>Who We Are</h2>
                <p>Cinevestor.in is owned and managed by Vithal Vision, a company deeply passionate about fostering creativity and supporting the art of storytelling. Our team comprises professionals with diverse backgrounds, from film enthusiasts to tech experts, all united by the shared belief in the power of cinema to inspire, entertain, and provoke thought.</p>
                
                <h2>What Sets Us Apart</h2>
                <ul>
                    <li><strong>Non-Equity Crowdfunding:</strong> Unlike traditional models, we offer non-equity-based crowdfunding, allowing supporters to contribute to film projects without financial ownership. This opens the door for a broader range of enthusiasts to be part of the filmmaking journey.</li>
                    <li><strong>Transparency and Trust:</strong> We prioritize transparency in all our interactions. From clear terms of use to detailed project information, we strive to build trust between creators and backers. Our commitment to transparency extends to our refund and privacy policies, ensuring a secure and trustworthy environment.</li>
                    <li><strong>Diverse Projects:</strong> Whether it's a short film, documentary, or feature-length movie, we welcome a variety of projects on Cinevestor.in. Our goal is to celebrate diversity in storytelling, giving creators the platform they need to share their unique perspectives with the world.</li>
                </ul>
                
                <h2>How It Works</h2>
                <p><strong>Creators:</strong> Filmmakers can launch campaigns, set funding goals, and engage directly with their audience through our platform. We provide tools and resources to help creators showcase their projects and reach a wider audience.</p>
                <p><strong>Investors:</strong> Film enthusiasts and supporters can explore a range of investment tiers, each offering exclusive benefits. By investing in projects, backers become an integral part of the filmmaking process and can enjoy returns based on the project's success.</p>
                
                <h2>Join Us in Shaping the Future of Cinema</h2>
                <p>Whether you are a storyteller with a vision, an avid film lover, or someone looking to be part of something extraordinary, Cinevestor invites you to join our vibrant community. Together, let's transform dreams into cinematic masterpieces!</p>
                <p>For any inquiries or collaboration opportunities, feel free to reach out to us at <a href="mailto:reach@cinevestor.in" style="color: var(--accent-1);">reach@cinevestor.in</a>.</p>
            </div>
        </div>
    </section>
    
    <!-- Team Section -->
    <section class="team-section">
        <div class="container">
            <div class="section-header">
                <h2 class="section-title">Our Team</h2>
            </div>
            <div class="team-grid">
                <div class="team-card">
                    <img src="https://randomuser.me/api/portraits/men/32.jpg" alt="Team Member" class="team-image">
                    <h3>Rajesh Sharma</h3>
                    <p>Founder & CEO</p>
                    <div class="social-links">
                        <a href="#"><i class="fab fa-linkedin-in"></i></a>
                        <a href="#"><i class="fab fa-twitter"></i></a>
                    </div>
                </div>
                <div class="team-card">
                    <img src="https://randomuser.me/api/portraits/women/44.jpg" alt="Team Member" class="team-image">
                    <h3>Priya Patel</h3>
                    <p>Creative Director</p>
                    <div class="social-links">
                        <a href="#"><i class="fab fa-linkedin-in"></i></a>
                        <a href="#"><i class="fab fa-twitter"></i></a>
                    </div>
                </div>
                <div class="team-card">
                    <img src="https://randomuser.me/api/portraits/men/75.jpg" alt="Team Member" class="team-image">
                    <h3>Amit Joshi</h3>
                    <p>Head of Investments</p>
                    <div class="social-links">
                        <a href="#"><i class="fab fa-linkedin-in"></i></a>
                        <a href="#"><i class="fab fa-twitter"></i></a>
                    </div>
                </div>
                <div class="team-card">
                    <img src="https://randomuser.me/api/portraits/women/68.jpg" alt="Team Member" class="team-image">
                    <h3>Neha Gupta</h3>
                    <p>Marketing Director</p>
                    <div class="social-links">
                        <a href="#"><i class="fab fa-linkedin-in"></i></a>
                        <a href="#"><i class="fab fa-twitter"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <!-- Values Section -->
    <section class="values-section">
        <div class="container">
            <div class="section-header">
                <h2 class="section-title">Our Core Values</h2>
            </div>
            <div class="values-grid">
                <div class="value-card">
                    <h3>Innovation</h3>
                    <p>We constantly push boundaries to create new models for film financing that benefit both creators and supporters.</p>
                </div>
                <div class="value-card">
                    <h3>Transparency</h3>
                    <p>Clear communication and honest dealings form the foundation of all our relationships.</p>
                </div>
                <div class="value-card">
                    <h3>Community</h3>
                    <p>We believe in the power of bringing people together to create something greater than the sum of its parts.</p>
                </div>
                <div class="value-card">
                    <h3>Creativity</h3>
                    <p>We champion original storytelling and diverse voices in cinema.</p>
                </div>
                <div class="value-card">
                    <h3>Integrity</h3>
                    <p>We operate with the highest ethical standards in all our business practices.</p>
                </div>
                <div class="value-card">
                    <h3>Passion</h3>
                    <p>Our love for cinema drives everything we do.</p>
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
 
</body>
</html>