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
        
        
        
        /* Hero Section */
        .audition-hero {
            min-height: 70vh;
            display: flex;
            align-items: center;
            padding: 8rem 0 4rem;
            position: relative;
            overflow: hidden;
            text-align: center;
        }
        
        .audition-hero-bg {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: url('https://images.unsplash.com/photo-1489599849927-2ee91cede3ba?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80') center/cover;
            opacity: 0.2;
            z-index: -1;
        }
        
        .audition-hero-content {
            width: 100%;
        }
        
        .audition-hero h1 {
            font-size: 3.5rem;
            margin-bottom: 1.5rem;
            line-height: 1.2;
            background: linear-gradient(90deg, var(--text-primary), var(--accent-1));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            text-fill-color: transparent;
        }
        
        .audition-hero p {
            font-size: 1.3rem;
            color: var(--text-secondary);
            max-width: 800px;
            margin: 0 auto;
        }
        
        /* About Film Section */
        .about-film {
            padding: 5rem 0;
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
        
        .film-content {
            max-width: 900px;
            margin: 0 auto;
            text-align: center;
        }
        
        .film-content p {
            color: var(--text-secondary);
            margin-bottom: 1.5rem;
            line-height: 1.8;
            font-size: 1.05rem;
        }
        
        /* Roles Section */
        .roles-section {
            padding: 5rem 0;
            background: linear-gradient(135deg, rgba(15, 12, 41, 0.8), rgba(48, 43, 99, 0.8));
        }
        
        .roles-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 2rem;
            margin-top: 3rem;
        }
        
        .role-card {
            background: var(--card-bg);
            padding: 2rem;
            border-radius: 10px;
            transition: var(--transition);
            border: 1px solid var(--card-border);
            position: relative;
            overflow: hidden;
        }
        
        .role-card:hover {
            transform: translateY(-10px);
            box-shadow: var(--shadow-neon);
            border-color: var(--accent-1);
        }
        
        .role-card h3 {
            font-size: 1.5rem;
            margin-bottom: 1rem;
            color: var(--text-primary);
        }
        
        .role-card .role-meta {
            color: var(--accent-3);
            margin-bottom: 1rem;
            font-weight: 500;
        }
        
        .role-card p {
            color: var(--text-tertiary);
            line-height: 1.7;
        }
        
        /* FAQ Section */
        .faq-section {
            padding: 5rem 0;
            background: rgba(15, 12, 41, 0.5);
            backdrop-filter: blur(10px);
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
        .audition-cta {
            padding: 5rem 0;
            text-align: center;
            background: linear-gradient(135deg, rgba(15, 12, 41, 0.8), rgba(48, 43, 99, 0.8));
            position: relative;
            overflow: hidden;
        }
        
        .audition-cta h2 {
            font-size: 2.5rem;
            margin-bottom: 1.5rem;
            background: linear-gradient(90deg, var(--text-primary), var(--accent-1));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            text-fill-color: transparent;
        }
        
        .audition-cta p {
            color: var(--text-secondary);
            max-width: 700px;
            margin: 0 auto 2.5rem;
            line-height: 1.7;
        }
        
        
        
        /* Responsive */
        @media (max-width: 992px) {
            .audition-hero h1 {
                font-size: 3rem;
            }
        }
        
        @media (max-width: 768px) {
           
            
            .audition-hero {
                padding-top: 6rem;
            }
            
            .audition-hero h1 {
                font-size: 2.5rem;
            }
            
            .section-title {
                font-size: 2rem;
            }
            
            
        }
    </style>
</head>
<body>
    <%@ include file="Navbar.jsp"%>
    <!-- Hero Section -->
    <section class="audition-hero">
        <div class="audition-hero-bg"></div>
        <div class="container">
            <div class="audition-hero-content">
                <h1>Audition for <span>Come in CDK</span></h1>
                <p>Casting Call for our upcoming genre-bending film blending humor, romance, and horror</p>
                <div style="margin-top: 3rem;">
                    <a href="Registration" class="cta-button">Register Now</a>
                </div>
            </div>
        </div>
    </section>
    
    <!-- About Film Section -->
    <section class="about-film">
        <div class="container">
            <div class="section-header">
                <h2 class="section-title">About the Film</h2>
            </div>
            <div class="film-content">
                <p>"Come In CDK" is a genre-bending film that blends elements of humor, romance, and horror. With a twist of reincarnation and past life revenge, the story takes audiences on a thrilling journey through love, friendship, and the supernatural.</p>
                <p>This unique story revolves around the reincarnation of a boy named Viraj, who seeks revenge from his past life girlfriend, Soumya. As Soumya threatens Viraj's present life girlfriend, Rithwika, a tale of love, betrayal, and supernatural intervention unfolds. Supported by his friends Rishi and Kashi, along with Rishi's sister Anuja, the group navigates through the complexities of past and present relationships.</p>
            </div>
        </div>
    </section>
    
    <!-- Roles Section -->
    <section class="roles-section">
        <div class="container">
            <div class="section-header">
                <h2 class="section-title">Roles Available</h2>
            </div>
            <div class="roles-grid">
                <div class="role-card">
                    <h3>Viraj</h3>
                    <div class="role-meta">Male, Age: 25-30</div>
                    <p>The protagonist of the film, Viraj is witty, charming, and determined to protect his present life girlfriend from the vengeful spirit of his past life girlfriend, Soumya.</p>
                </div>
                <div class="role-card">
                    <h3>Rithwika</h3>
                    <div class="role-meta">Female, Age: 20-25</div>
                    <p>Viraj's present life girlfriend, Rithwika is kind-hearted and resilient, facing the challenges posed by Soumya's spirit with courage.</p>
                </div>
                <div class="role-card">
                    <h3>Soumya</h3>
                    <div class="role-meta">Female, Age: 25-30</div>
                    <p>The antagonist of the film, Soumya is the vengeful spirit from Viraj's past life, determined to harm Rithwika out of jealousy and revenge.</p>
                </div>
                <div class="role-card">
                    <h3>Rishi</h3>
                    <div class="role-meta">Male, Age: 25-30</div>
                    <p>Viraj's loyal friend, Rishi provides comic relief and unwavering support in Viraj's quest to protect Rithwika.</p>
                </div>
                <div class="role-card">
                    <h3>Kashi</h3>
                    <div class="role-meta">Male, Age: 25-30</div>
                    <p>Kashi is another close friend of Viraj, who harbors a secret crush on Rishi's sister, Anuja.</p>
                </div>
                <div class="role-card">
                    <h3>Anuja</h3>
                    <div class="role-meta">Female, Age: 25-30</div>
                    <p>Rishi's sister, Anuja adds depth to the storyline with her relationship dynamics and connection to the supernatural elements of the plot.</p>
                </div>
                <div class="role-card">
                    <h3>Mausam Chacha</h3>
                    <div class="role-meta">Male, Age: 40-50</div>
                    <p>A mystical character, Mausam Chacha is a supernaturalist or "god's man" who aids Viraj and his friends in their battle against Soumya's evil spirit.</p>
                </div>
<!-- Add this to the roles-section after the role-card divs -->
<div class="roles-cta" style="text-align: center; margin-top: 3rem;">
    <a href="Registration" class="cta-button">Apply for Any Role</a>
    <p style="margin-top: 1rem; color: var(--text-secondary);">or select a specific role above</p>
</div>
            </div>
        </div>
    </section>
    
    <!-- FAQ Section -->
    <section class="faq-section" id="faq">
        <div class="container">
            <div class="section-header">
                <h2 class="section-title">Frequently Asked Questions</h2>
            </div>
            <div class="faq-container">
                <div class="faq-item">
                    <div class="faq-question">
                        <h3>What is the format of the audition for "Come In CDK"?</h3>
                        <i class="fas fa-chevron-down"></i>
                    </div>
                    <div class="faq-answer">
                        <p>The audition will be conducted online. Selected candidates will be asked to submit a video performance based on provided scenes and directions.</p>
                    </div>
                </div>
                <div class="faq-item">
                    <div class="faq-question">
                        <h3>Why is there a registration fee for the online audition?</h3>
                        <i class="fas fa-chevron-down"></i>
                    </div>
                    <div class="faq-answer">
                        <p>The registration fee helps cover the administrative costs of processing applications and ensures serious applicants only.</p>
                    </div>
                </div>
                <div class="faq-item">
                    <div class="faq-question">
                        <h3>Is the registration fee refundable?</h3>
                        <i class="fas fa-chevron-down"></i>
                    </div>
                    <div class="faq-answer">
                        <p>The registration fee is non-refundable as it covers processing costs regardless of selection outcome.</p>
                    </div>
                </div>
                <div class="faq-item">
                    <div class="faq-question">
                        <h3>Do I need acting experience to participate in the audition?</h3>
                        <i class="fas fa-chevron-down"></i>
                    </div>
                    <div class="faq-answer">
                        <p>While prior experience is beneficial, we welcome all talented individuals who believe they can bring our characters to life.</p>
                    </div>
                </div>
                <div class="faq-item">
                    <div class="faq-question">
                        <h3>How can I stay updated on the latest news and announcements?</h3>
                        <i class="fas fa-chevron-down"></i>
                    </div>
                    <div class="faq-answer">
                        <p>All updates will be shared through our official website and registered email addresses. Follow our social media for additional updates.</p>
                    </div>
                </div>
                <div class="faq-item">
                    <div class="faq-question">
                        <h3>Is there a scam alert I should be aware of?</h3>
                        <i class="fas fa-chevron-down"></i>
                    </div>
                    <div class="faq-answer">
                        <p>Beware of any communication asking for additional payments beyond the official registration fee. All official communication will come from @cinevestor.in domains.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <!-- CTA Section -->
    <section class="audition-cta" id="register">
        <div class="container">
            <h2>Ready to Audition?</h2>
            <p>Don't miss this exciting opportunity to be part of a unique cinematic experience. Register now for your chance to join the cast of "Come In CDK".</p>
            <a href="Registration" class="cta-button">Register Now</a>
            <div style="margin-top: 2rem;">
                <p style="font-size: 0.9rem; color: var(--text-tertiary);">Spread the word! Share this opportunity with your friends</p>
                <div class="social-links" style="justify-content: center; margin-top: 1rem;">
                    <a href="#"><i class="fab fa-facebook-f"></i></a>
                    <a href="#"><i class="fab fa-twitter"></i></a>
                    <a href="#"><i class="fab fa-instagram"></i></a>
                    <a href="#"><i class="fab fa-linkedin-in"></i></a>
                    <a href="#"><i class="fab fa-whatsapp"></i></a>
                </div>
            </div>
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