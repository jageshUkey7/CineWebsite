<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Explore Projects | Cinevestor</title>
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
        
       
        /* Page Header */
        .page-header {
            padding: 10rem 0 5rem;
            text-align: center;
            position: relative;
            overflow: hidden;
        }
        
        .page-header-bg {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: url('https://images.unsplash.com/photo-1478720568477-152d9b164e26?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80') center/cover;
            opacity: 0.2;
            z-index: -1;
        }
        
        .page-title {
            font-size: 3.5rem;
            margin-bottom: 1.5rem;
            background: linear-gradient(90deg, var(--text-primary), var(--accent-1));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            text-fill-color: transparent;
        }
        
        .page-description {
            max-width: 700px;
            margin: 0 auto 2rem;
            color: var(--text-secondary);
            font-size: 1.1rem;
            line-height: 1.7;
        }
        
        /* Filter Section */
        .filter-section {
            padding: 2rem 0;
            background: rgba(15, 12, 41, 0.5);
            backdrop-filter: blur(10px);
            border-top: 1px solid var(--card-border);
            border-bottom: 1px solid var(--card-border);
        }
        
        .filter-container {
            display: flex;
            flex-wrap: wrap;
            gap: 1.5rem;
            align-items: center;
            justify-content: center;
        }
        
        .filter-group {
            display: flex;
            gap: 0.5rem;
            flex-wrap: wrap;
        }
        
        .filter-button {
            background: var(--card-bg);
            color: var(--text-secondary);
            border: 1px solid var(--card-border);
            padding: 0.6rem 1.2rem;
            border-radius: 30px;
            font-size: 0.9rem;
            cursor: pointer;
            transition: var(--transition);
        }
        
        .filter-button:hover, .filter-button.active {
            background: linear-gradient(90deg, rgba(255, 60, 172, 0.1), rgba(43, 134, 197, 0.1));
            color: var(--text-primary);
            border-color: var(--accent-1);
            box-shadow: var(--shadow-neon);
        }
        
        .search-container {
            position: relative;
            flex: 1;
            max-width: 400px;
        }
        
        .search-input {
            width: 100%;
            padding: 0.8rem 1.2rem 0.8rem 3rem;
            border-radius: 30px;
            border: 1px solid var(--card-border);
            background: var(--card-bg);
            color: var(--text-primary);
            font-family: 'Montserrat', sans-serif;
            transition: var(--transition);
        }
        
        .search-input:focus {
            outline: none;
            border-color: var(--accent-1);
            box-shadow: var(--shadow-neon);
        }
        
        .search-icon {
            position: absolute;
            left: 1.2rem;
            top: 50%;
            transform: translateY(-50%);
            color: var(--text-tertiary);
        }
        
        /* Projects Grid */
        .projects-section {
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
        
        .projects-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(350px, 1fr));
            gap: 2.5rem;
        }
        
        .project-card {
            background: var(--card-bg);
            border-radius: 10px;
            overflow: hidden;
            border: 1px solid var(--card-border);
            transition: var(--transition);
            display: flex;
            flex-direction: column;
            height: 100%;
        }
        
        .project-card:hover {
            transform: translateY(-10px);
            box-shadow: var(--shadow-glow);
            border-color: var(--accent-3);
        }
        
        .project-image {
            height: 220px;
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
        
        .project-status-badge {
            position: absolute;
            top: 1rem;
            right: 1rem;
            padding: 0.4rem 0.8rem;
            border-radius: 30px;
            font-size: 0.8rem;
            font-weight: 600;
            z-index: 1;
        }
        
        .status-production {
            background: rgba(255, 60, 172, 0.8);
            color: white;
        }
        
        .status-post-production {
            background: rgba(43, 134, 197, 0.8);
            color: white;
        }
        
        .status-pre-production {
            background: rgba(120, 75, 160, 0.8);
            color: white;
        }
        
        .project-content {
            padding: 1.8rem;
            flex: 1;
            display: flex;
            flex-direction: column;
        }
        
        .project-category {
            display: inline-block;
            background: linear-gradient(90deg, var(--accent-1), var(--accent-3));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            text-fill-color: transparent;
            font-size: 0.9rem;
            margin-bottom: 0.8rem;
            font-weight: 600;
        }
        
        .project-title {
            font-size: 1.5rem;
            margin-bottom: 1rem;
            color: var(--text-primary);
        }
        
        .project-description {
            color: var(--text-tertiary);
            font-size: 0.95rem;
            margin-bottom: 1.5rem;
            line-height: 1.6;
            flex: 1;
        }
        
        .project-details {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 1rem;
            margin-bottom: 1.5rem;
        }
        
        .detail-item {
            display: flex;
            flex-direction: column;
        }
        
        .detail-label {
            font-size: 0.8rem;
            color: var(--text-tertiary);
            margin-bottom: 0.2rem;
        }
        
        .detail-value {
            font-size: 0.95rem;
            color: var(--text-primary);
            font-weight: 500;
        }
        
        .project-footer {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-top: auto;
        }
        
        .investment-info {
            display: flex;
            flex-direction: column;
        }
        
        .investment-label {
            font-size: 0.8rem;
            color: var(--text-tertiary);
        }
        
        .investment-value {
            font-size: 1.1rem;
            font-weight: 600;
            background: linear-gradient(90deg, var(--accent-1), var(--accent-3));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            text-fill-color: transparent;
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
        
        /* Pagination */
        .pagination {
            display: flex;
            justify-content: center;
            gap: 0.5rem;
            margin-top: 3rem;
        }
        
        .page-item {
            width: 40px;
            height: 40px;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 50%;
            background: var(--card-bg);
            border: 1px solid var(--card-border);
            color: var(--text-secondary);
            font-weight: 500;
            transition: var(--transition);
            cursor: pointer;
        }
        
        .page-item:hover, .page-item.active {
            background: linear-gradient(90deg, var(--accent-1), var(--accent-3));
            color: var(--text-primary);
            border-color: transparent;
            box-shadow: var(--shadow-neon);
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
        @media (max-width: 1200px) {
            .projects-grid {
                grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
            }
        }
        
        @media (max-width: 992px) {
            .page-title {
                font-size: 3rem;
            }
            
            
        }
        
        @media (max-width: 768px) {
           
            
            .page-header {
                padding: 8rem 0 4rem;
                text-align: center;
            }
            
            .page-title {
                font-size: 2.5rem;
            }
            
            .section-title {
                font-size: 2rem;
            }
            
            .filter-container {
                flex-direction: column;
                align-items: stretch;
            }
            
            .search-container {
                max-width: 100%;
            }
            
           
            
            .badges {
                flex-direction: column;
                align-items: flex-start;
            }
        }
        
        @media (max-width: 576px) {
            .projects-grid {
                grid-template-columns: 1fr;
            }
            
            .project-details {
                grid-template-columns: 1fr;
            }
        }
    </style>
</head>
<body>
    <%@ include file="Navbar.jsp"%>
    
    <!-- Page Header -->
    <section class="page-header">
        <div class="page-header-bg"></div>
        <div class="container">
            <h1 class="page-title">Explore Projects</h1>
            <p class="page-description">Discover our curated collection of film projects seeking investment. Find the perfect project to support and be part of the cinematic journey.</p>
        </div>
    </section>
    
    <!-- Filter Section -->
    <section class="filter-section">
        <div class="container filter-container">
            <div class="filter-group">
                <button class="filter-button active">All Projects</button>
                <button class="filter-button">In Production</button>
                <button class="filter-button">Pre-Production</button>
                <button class="filter-button">Post-Production</button>
            </div>
            <div class="filter-group">
                <button class="filter-button">Drama</button>
                <button class="filter-button">Thriller</button>
                <button class="filter-button">Comedy</button>
                <button class="filter-button">Documentary</button>
            </div>
            <div class="search-container">
                <i class="fas fa-search search-icon"></i>
                <input type="text" class="search-input" placeholder="Search projects...">
            </div>
        </div>
    </section>
    
    <!-- Projects Grid -->
    <section class="projects-section">
        <div class="container">
            <div class="section-header">
                <h2 class="section-title">Current Projects</h2>
            </div>
            
            <div class="projects-grid">
                <!-- Project 1 -->
                <div class="project-card">
                    <div class="project-image">
                        <div class="project-status-badge status-production">In Production</div>
                        <img src="https://images.unsplash.com/photo-1485846234645-a62644f84728?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1159&q=80" alt="Project 1">
                    </div>
                    <div class="project-content">
                        <span class="project-category">Comedy</span>
                        <h3 class="project-title">City of Dreams</h3>
                        <p class="project-description">A lighthearted take on the struggles of young professionals in metropolitan India.</p>
                        
                        <div class="project-details">
                            <div class="detail-item">
                                <span class="detail-label">Director</span>
                                <span class="detail-value">Rahul Kapoor</span>
                            </div>
                            <div class="detail-item">
                                <span class="detail-label">Budget</span>
                                <span class="detail-value">₹80 Lakhs</span>
                            </div>
                            <div class="detail-item">
                                <span class="detail-label">Returns</span>
                                <span class="detail-value">15-20%</span>
                            </div>
                            <div class="detail-item">
                                <span class="detail-label">Timeline</span>
                                <span class="detail-value">12 months</span>
                            </div>
                        </div>
                        
                        <div class="project-footer">
                            <div class="investment-info">
                                <span class="investment-label">Min Investment</span>
                                <span class="investment-value">₹2 Lakhs</span>
                            </div>
                            <a href="#" class="view-project">
                                Invest Now <i class="fas fa-arrow-right"></i>
                            </a>
                        </div>
                    </div>
                </div>
                
                <!-- Project 2 -->
                <div class="project-card">
                    <div class="project-image">
                        <div class="project-status-badge status-post-production">Post-Production</div>
                        <img src="https://images.unsplash.com/photo-1518173946687-a4c8892bbd9f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1074&q=80" alt="Project 2">
                    </div>
                    <div class="project-content">
                        <span class="project-category">Drama</span>
                        <h3 class="project-title">The Last Sunset</h3>
                        <p class="project-description">An emotional journey of self-discovery set against the backdrop of rural India.</p>
                        
                        <div class="project-details">
                            <div class="detail-item">
                                <span class="detail-label">Director</span>
                                <span class="detail-value">Ananya Desai</span>
                            </div>
                            <div class="detail-item">
                                <span class="detail-label">Budget</span>
                                <span class="detail-value">₹1.2 Crore</span>
                            </div>
                            <div class="detail-item">
                                <span class="detail-label">Returns</span>
                                <span class="detail-value">18-22%</span>
                            </div>
                            <div class="detail-item">
                                <span class="detail-label">Timeline</span>
                                <span class="detail-value">15 months</span>
                            </div>
                        </div>
                        
                        <div class="project-footer">
                            <div class="investment-info">
                                <span class="investment-label">Min Investment</span>
                                <span class="investment-value">₹3 Lakhs</span>
                            </div>
                            <a href="#" class="view-project">
                                Invest Now <i class="fas fa-arrow-right"></i>
                            </a>
                        </div>
                    </div>
                </div>
                
                <!-- Project 3 -->
                <div class="project-card">
                    <div class="project-image">
                        <div class="project-status-badge status-pre-production">Pre-Production</div>
                        <img src="https://images.unsplash.com/photo-1515634928627-2a4e0dae3ddf?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80" alt="Project 3">
                    </div>
                    <div class="project-content">
                        <span class="project-category">Documentary</span>
                        <h3 class="project-title">Voices Unheard</h3>
                        <p class="project-description">Exploring untold stories from marginalized communities across India.</p>
                        
                        <div class="project-details">
                            <div class="detail-item">
                                <span class="detail-label">Director</span>
                                <span class="detail-value">Vikram Mehta</span>
                            </div>
                            <div class="detail-item">
                                <span class="detail-label">Budget</span>
                                <span class="detail-value">₹60 Lakhs</span>
                            </div>
                            <div class="detail-item">
                                <span class="detail-label">Returns</span>
                                <span class="detail-value">15-18%</span>
                            </div>
                            <div class="detail-item">
                                <span class="detail-label">Timeline</span>
                                <span class="detail-value">10 months</span>
                            </div>
                        </div>
                        
                        <div class="project-footer">
                            <div class="investment-info">
                                <span class="investment-label">Min Investment</span>
                                <span class="investment-value">₹1.5 Lakhs</span>
                            </div>
                            <a href="#" class="view-project">
                                Invest Now <i class="fas fa-arrow-right"></i>
                            </a>
                        </div>
                    </div>
                </div>
                
                <!-- Project 4 -->
                <div class="project-card">
                    <div class="project-image">
                        <div class="project-status-badge status-pre-production">Pre-Production</div>
                        <img src="https://images.unsplash.com/photo-1626814026160-2237a95fc5a0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80" alt="Project 4">
                    </div>
                    <div class="project-content">
                        <span class="project-category">Sci-Fi</span>
                        <h3 class="project-title">Digital Dystopia</h3>
                        <p class="project-description">A futuristic tale set in 2050 India, exploring the consequences of technology addiction.</p>
                        
                        <div class="project-details">
                            <div class="detail-item">
                                <span class="detail-label">Director</span>
                                <span class="detail-value">Arjun Nair</span>
                            </div>
                            <div class="detail-item">
                                <span class="detail-label">Budget</span>
                                <span class="detail-value">₹2 Crore</span>
                            </div>
                            <div class="detail-item">
                                <span class="detail-label">Returns</span>
                                <span class="detail-value">20-25%</span>
                            </div>
                            <div class="detail-item">
                                <span class="detail-label">Timeline</span>
                                <span class="detail-value">18 months</span>
                            </div>
                        </div>
                        
                        <div class="project-footer">
                            <div class="investment-info">
                                <span class="investment-label">Min Investment</span>
                                <span class="investment-value">₹5 Lakhs</span>
                            </div>
                            <a href="#" class="view-project">
                                Invest Now <i class="fas fa-arrow-right"></i>
                            </a>
                        </div>
                    </div>
                </div>
                
                <!-- Project 5 -->
                <div class="project-card">
                    <div class="project-image">
                        <div class="project-status-badge status-production">In Production</div>
                        <img src="https://images.unsplash.com/photo-1533928298208-27ff66555d8d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80" alt="Project 5">
                    </div>
                    <div class="project-content">
                        <span class="project-category">Adventure</span>
                        <h3 class="project-title">Mountain Echoes</h3>
                        <p class="project-description">A thrilling adventure film following a group of mountaineers attempting to scale an unclimbed peak.</p>
                        
                        <div class="project-details">
                            <div class="detail-item">
                                <span class="detail-label">Director</span>
                                <span class="detail-value">Karan Malhotra</span>
                            </div>
                            <div class="detail-item">
                                <span class="detail-label">Budget</span>
                                <span class="detail-value">₹1.8 Crore</span>
                            </div>
                            <div class="detail-item">
                                <span class="detail-label">Returns</span>
                                <span class="detail-value">18-23%</span>
                            </div>
                            <div class="detail-item">
                                <span class="detail-label">Timeline</span>
                                <span class="detail-value">14 months</span>
                            </div>
                        </div>
                        
                        <div class="project-footer">
                            <div class="investment-info">
                                <span class="investment-label">Min Investment</span>
                                <span class="investment-value">₹4 Lakhs</span>
                            </div>
                            <a href="#" class="view-project">
                                Invest Now <i class="fas fa-arrow-right"></i>
                            </a>
                        </div>
                    </div>
                </div>
                
                <!-- Project 6 -->
                <div class="project-card">
                    <div class="project-image">
                        <div class="project-status-badge status-post-production">Post-Production</div>
                        <img src="https://images.unsplash.com/photo-1542204165-65bf26472b9b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1074&q=80" alt="Project 6">
                    </div>
                    <div class="project-content">
                        <span class="project-category">Mystery</span>
                        <h3 class="project-title">Shadows of the Past</h3>
                        <p class="project-description">A gripping mystery set in colonial India, where a detective must solve a series of murders.</p>
                        
                        <div class="project-details">
                            <div class="detail-item">
                                <span class="detail-label">Director</span>
                                <span class="detail-value">Meera Tandon</span>
                            </div>
                            <div class="detail-item">
                                <span class="detail-label">Budget</span>
                                <span class="detail-value">₹1.4 Crore</span>
                            </div>
                            <div class="detail-item">
                                <span class="detail-label">Returns</span>
                                <span class="detail-value">17-22%</span>
                            </div>
                            <div class="detail-item">
                                <span class="detail-label">Timeline</span>
                                <span class="detail-value">16 months</span>
                            </div>
                        </div>
                        
                        <div class="project-footer">
                            <div class="investment-info">
                                <span class="investment-label">Min Investment</span>
                                <span class="investment-value">₹3.5 Lakhs</span>
                            </div>
                            <a href="#" class="view-project">
                                Invest Now <i class="fas fa-arrow-right"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- Pagination -->
            <div class="pagination">
                <div class="page-item active">1</div>
                <div class="page-item">2</div>
                <div class="page-item">3</div>
                <div class="page-item"><i class="fas fa-ellipsis-h"></i></div>
                <div class="page-item">8</div>
                <div class="page-item"><i class="fas fa-chevron-right"></i></div>
            </div>
        </div>
    </section>
    
    <%@ include file="Footer.jsp"%>

    <script>
      
        
        // Filter buttons
        const filterButtons = document.querySelectorAll('.filter-button');
        filterButtons.forEach(button => {
            button.addEventListener('click', () => {
                // Remove active class from all buttons
                filterButtons.forEach(btn => btn.classList.remove('active'));
                // Add active class to clicked button
                button.classList.add('active');
                // Here you would typically filter the projects
            });
        });
    </script>
</body>
</html>