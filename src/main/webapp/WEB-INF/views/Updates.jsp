<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Updates | Cinevestor</title>
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
            max-width: 1200px;
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
        
        
        /* Page Header */
        .page-header {
            padding: 8rem 0 3rem;
            text-align: center;
            position: relative;
        }
        
        .page-header h1 {
            font-size: 3rem;
            margin-bottom: 1.5rem;
            background: linear-gradient(90deg, var(--text-primary), var(--accent-1));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            text-fill-color: transparent;
        }
        
        .page-header p {
            color: var(--text-secondary);
            max-width: 700px;
            margin: 0 auto;
            font-size: 1.1rem;
        }
        
        /* Updates Content */
        .updates-content {
            padding: 3rem 0;
            position: relative;
        }
        
        .updates-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(350px, 1fr));
            gap: 2rem;
        }
        
        .update-card {
            background: var(--card-bg);
            border-radius: 10px;
            overflow: hidden;
            border: 1px solid var(--card-border);
            transition: var(--transition);
            position: relative;
        }
        
        .update-card:hover {
            transform: translateY(-5px);
            box-shadow: var(--shadow-glow);
            border-color: var(--accent-3);
        }
        
        .update-image {
            height: 200px;
            overflow: hidden;
            position: relative;
        }
        
        .update-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.5s ease;
        }
        
        .update-card:hover .update-image img {
            transform: scale(1.05);
        }
        
        .update-content {
            padding: 1.5rem;
        }
        
        .update-meta {
            display: flex;
            justify-content: space-between;
            margin-bottom: 0.5rem;
            color: var(--text-tertiary);
            font-size: 0.9rem;
        }
        
        .update-category {
            display: inline-block;
            background: linear-gradient(90deg, var(--accent-1), var(--accent-3));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            text-fill-color: transparent;
            font-size: 0.9rem;
            font-weight: 600;
        }
        
        .update-title {
            font-size: 1.3rem;
            margin-bottom: 0.8rem;
            color: var(--text-primary);
        }
        
        .update-excerpt {
            color: var(--text-secondary);
            margin-bottom: 1.5rem;
            line-height: 1.6;
        }
        
        .read-more {
            color: var(--accent-1);
            text-decoration: none;
            font-weight: 600;
            display: flex;
            align-items: center;
            gap: 0.5rem;
            transition: var(--transition);
        }
        
        .read-more:hover {
            color: var(--accent-3);
        }
        
        .tags {
            display: flex;
            flex-wrap: wrap;
            gap: 0.5rem;
            margin-top: 1rem;
        }
        
        .tag {
            background: rgba(255, 60, 172, 0.1);
            color: var(--accent-1);
            padding: 0.3rem 0.8rem;
            border-radius: 20px;
            font-size: 0.8rem;
            font-weight: 500;
        }
        
        /* Featured Update */
        .featured-update {
            grid-column: 1 / -1;
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 2rem;
            margin-bottom: 3rem;
        }
        
        .featured-update .update-image {
            height: 300px;
        }
        
        .featured-update .update-content {
            display: flex;
            flex-direction: column;
            justify-content: center;
        }
        
        .featured-update .update-title {
            font-size: 1.8rem;
        }
        
         
        /* Badges */
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
            .featured-update {
                grid-template-columns: 1fr;
            }
            
            .featured-update .update-image {
                height: 250px;
            }
        }
        
        @media (max-width: 768px) {
             
            
            .page-header {
                padding-top: 6rem;
            }
            
            .page-header h1 {
                font-size: 2.5rem;
            }
            
            
            
            .badges {
                flex-direction: column;
                align-items: flex-start;
            }
        }
    </style>
</head>
<body>
    <!-- Decorative Elements -->
    <div class="decorative-circle circle-1"></div>
    <div class="decorative-circle circle-2"></div>
    <div class="decorative-circle circle-3"></div>
    
    <%@ include file="Navbar.jsp"%>
    <!-- Page Header -->
    <section class="page-header">
        <div class="container">
            <h1>Updates</h1>
            <p>Stay updated with the latest news, announcements, and insights from Cinevestor</p>
        </div>
    </section>
    
    <!-- Updates Content -->
    <section class="updates-content">
        <div class="container">
            <div class="updates-grid">
                <!-- Featured Update -->
                <div class="update-card featured-update">
                    <div class="update-image">
                        <img src="https://images.unsplash.com/photo-1511578314322-379afb476865?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80" alt="Startup Mahakumbh">
                    </div>
                    <div class="update-content">
                        <div class="update-meta">
                            <span class="update-category">Update</span>
                            <span>March 30, 2025</span>
                        </div>
                        <h2 class="update-title">Cinevestor.in to Showcase at Startup Mahakumbh 2025 in New Delhi</h2>
                        <p class="update-excerpt">Kamal Meshram, representing Cinevestor.in (registered under Vithal Vision Private Limited), a DPIIT-recognized startup, is set to participate in the prestigious Startup Mahakumbh 2025 at Bharat Mandapam, New Delhi...</p>
                        <a href="#" class="read-more">Read More <i class="fas fa-arrow-right"></i></a>
                    </div>
                </div>
                
                <!-- Regular Updates -->
                <div class="update-card">
                    <div class="update-image">
                        <img src="https://images.unsplash.com/photo-1489599849927-2ee91cede3ba?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80" alt="Filmmaking Collaboration">
                    </div>
                    <div class="update-content">
                        <div class="update-meta">
                            <span class="update-category">Filmmaking</span>
                            <span>December 25, 2024</span>
                        </div>
                        <h2 class="update-title">The Role of Collaboration in Filmmaking: Crafting Cinematic Magic Together</h2>
                        <p class="update-excerpt">Filmmaking is more than just a creative endeavor—it's a collective journey that unites storytellers, visionaries, and technical experts...</p>
                        <div class="tags">
                            <span class="tag">Cinevestor</span>
                            <span class="tag">FilmInvestment</span>
                            <span class="tag">Filmmaking</span>
                        </div>
                        <a href="#" class="read-more">Read More <i class="fas fa-arrow-right"></i></a>
                    </div>
                </div>
                
                <div class="update-card">
                    <div class="update-image">
                        <img src="https://images.unsplash.com/photo-1501612780327-45045538702b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80" alt="Indian Cinema Music">
                    </div>
                    <div class="update-content">
                        <div class="update-meta">
                            <span class="update-category">Update</span>
                            <span>December 17, 2024</span>
                        </div>
                        <h2 class="update-title">The Power of Music in Indian Cinema: Crafting Emotions and Enhancing Storytelling</h2>
                        <p class="update-excerpt">Indian cinema has always had a deep relationship with music. It's more than just entertainment—it's the emotional core of storytelling that connects audiences...</p>
                        <div class="tags">
                            <span class="tag">Cinevestor</span>
                            <span class="tag">FilmMusic</span>
                            <span class="tag">IndianCinema</span>
                        </div>
                        <a href="#" class="read-more">Read More <i class="fas fa-arrow-right"></i></a>
                    </div>
                </div>
                
                <div class="update-card">
                    <div class="update-image">
                        <img src="https://images.unsplash.com/photo-1485846234645-a62644f84728?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1159&q=80" alt="Independent Filmmaking">
                    </div>
                    <div class="update-content">
                        <div class="update-meta">
                            <span class="update-category">Update</span>
                            <span>November 10, 2024</span>
                        </div>
                        <h2 class="update-title">Independent Filmmaking in India on the Lowest Budget: A Practical Guide</h2>
                        <p class="update-excerpt">Independent filmmaking in India is thriving, with the rise of digital platforms and creative minds eager to tell unique stories on minimal budgets...</p>
                        <div class="tags">
                            <span class="tag">Cinevestor</span>
                            <span class="tag">Filmmaking</span>
                        </div>
                        <a href="#" class="read-more">Read More <i class="fas fa-arrow-right"></i></a>
                    </div>
                </div>
                
                <div class="update-card">
                    <div class="update-image">
                        <img src="https://images.unsplash.com/photo-1478720568477-152d9b164e26?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80" alt="Film Crowdfunding">
                    </div>
                    <div class="update-content">
                        <div class="update-meta">
                            <span class="update-category">Update</span>
                            <span>January 28, 2024</span>
                        </div>
                        <h2 class="update-title">Cinematic Dreams Unleashed: The Rise of Film Crowdfunding in India</h2>
                        <p class="update-excerpt">In the vibrant tapestry of Indian cinema, where storytelling is an art form and creativity knows no bounds, the advent of film crowdfunding has emerged as a transformative force...</p>
                        <a href="#" class="read-more">Read More <i class="fas fa-arrow-right"></i></a>
                    </div>
                </div>
                
                <div class="update-card">
                    <div class="update-image">
                        <img src="https://images.unsplash.com/photo-1517604931442-7e0c8ed2963c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1614&q=80" alt="Film Crowdfunding">
                    </div>
                    <div class="update-content">
                        <div class="update-meta">
                            <span class="update-category">Update</span>
                            <span>January 28, 2024</span>
                        </div>
                        <h2 class="update-title">Lights, Camera, Crowdfunding: Empowering the Reel Visionaries</h2>
                        <p class="update-excerpt">In the enchanting world of filmmaking, where creativity meets storytelling, the financial challenges of bringing a cinematic vision to life can be formidable...</p>
                        <a href="#" class="read-more">Read More <i class="fas fa-arrow-right"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    < <%@ include file="Footer.jsp"%>

     
</body>
</html>