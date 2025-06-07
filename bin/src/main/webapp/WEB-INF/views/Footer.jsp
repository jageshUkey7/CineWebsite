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
         
        .footer {
    background: rgba(15, 12, 41, 0.9);
    padding: 4rem 0 2rem;
    border-top: 1px solid var(--card-border);
    position: relative;
}

.footer-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
    gap: 3rem;
    margin-bottom: 3rem;
}

.footer-logo {
    height:9.2rem;
    width: 10.1rem;
    margin-top: -3.7rem;
    margin-bottom: -2.9rem;
    margin-left: -12px;
 
}

.footer-about {
    color: var(--text-tertiary);
    margin-bottom: 1.5rem;
    line-height: 1.7;
}

.social-links {
    margin-top: 1rem;
    display: flex;
    gap: 1rem;
}

.social-links a {
    color: var(--text-primary);
    font-size: 1.2rem;
    transition: var(--transition);
    background: var(--card-bg);
    width: 40px;
    height: 40px;
    display: flex;
    align-items: center;
    justify-content: center;
    border-radius: 50%;
    border: 1px solid var(--card-border);
    text-decoration:none;
}

.social-links a:hover {
    background: linear-gradient(135deg, var(--accent-1), var(--accent-3));
    transform: translateY(-3px);
    box-shadow: var(--shadow-neon);
    border-color: transparent;
}

.footer-title {
    font-size: 1.2rem;
    margin-bottom: 1.5rem;
    position: relative;
    color: var(--text-primary);
}

.footer-title::after {
    content: '';
    position: absolute;
    bottom: -8px;
    left: 0;
    width: 30px;
    height: 2px;
    background: linear-gradient(90deg, var(--accent-1), var(--accent-3));
}

.footer-links {
    list-style: none;
}

.footer-links li {
    margin-bottom: 0.8rem;
}

.footer-links a {
    color: var(--text-tertiary);
    text-decoration: none;
    transition: var(--transition);
    position: relative;
    padding-left: 0;
}

.footer-links a::before {
    content: '';
    position: absolute;
    bottom: -2px;
    left: 0;
    width: 0;
    height: 1px;
    background: linear-gradient(90deg, var(--accent-1), var(--accent-3));
    transition: var(--transition);
}

.footer-links a:hover {
    color: var(--text-primary);
    padding-left: 5px;
}

.footer-links a:hover::before {
    width: 100%;
}

.footer-bottom {
    padding-top: 2rem;
    border-top: 1px solid var(--card-border);
    display: flex;
    justify-content: space-between;
    color: var(--text-tertiary);
    font-size: 0.9rem;
}

.footer-legal {
    display: flex;
    gap: 1.5rem;
}

.footer-legal a {
    color: var(--text-tertiary);
    text-decoration: none;
    transition: var(--transition);
}

.footer-legal a:hover {
    color: var(--accent-1);
}

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
    background-color: none;
    background: none;
    height: 50px;
    width: 50px;
    border-radius: 50%;
}

.company-info {
    margin-top: 1.5rem;
    font-size: 0.8rem;
    color: var(--text-tertiary);
    line-height: 1.6;
}

@media (max-width: 768px) {
    .footer-bottom {
        flex-direction: column;
        gap: 1rem;
        text-align: center;
    }
    
    .footer-legal {
        justify-content: center;
    }
    
    .badges {
        flex-direction: column;
        align-items: flex-start;
    }
}
       
    </style>
</head>
<body>

   <!-- Footer -->
<footer class="footer">
    <div class="container">
        <div class="footer-grid">
            <div class="footer-col">
                <img src="/images/logo.png" alt="Cinevestor" class="footer-logo">
                <p class="footer-about">Cinevestor redefines film financing through innovative sponsorship models that connect supporters with exceptional cinematic projects.</p>
                
                <div class="badges">
                    <div class="badge">
                        <img src="/images/Make in india.webp" alt="Make in India">
                        <span>Make in India</span>
                    </div>
                    <div class="badge">
                        <img src="/images/Startup india.png" alt="DPIIT Recognised Startup">
                        <span>DPIIT Recognised Startup</span>
                    </div>
                </div>
                
                <div class="company-info">
                    Registered Name: Vithal Visions Private Limited<br>
                    CIN: U59141PN2025PTC237150<br>
                    DPIIT: DIPP188934
                </div>
                
                <div class="social-links">
                    <a href="https://www.instagram.com/cinevestor/"><i class="fab fa-instagram"></i></a>
                    <a href="#"><i class="fab fa-twitter"></i></a>
                    <a href="https://in.linkedin.com/company/vithal-vision"><i class="fab fa-linkedin-in"></i></a>
                    <a href="https://www.facebook.com/cinevestor.in/"><i class="fab fa-facebook-f"></i></a>
                    <a href="#"><i class="fab fa-youtube"></i></a>
                </div>
            </div>
            <div class="footer-col">
                <h3 class="footer-title">Quick Links</h3>
                <ul class="footer-links">
                    <li><a href="#">Home</a></li>
                    <li><a href="About">About Us</a></li>
                    <li><a href="Investmentoption">Investment Options</a></li>
                    <li><a href="Explore.">Current Projects</a></li>
                    <li><a href="Updates">Updates</a></li>
                    <li><a href="Contact">Contact</a></li>
                </ul>
            </div>
            <div class="footer-col">
                <h3 class="footer-title">Legal</h3>
                <ul class="footer-links">
                    <li><a href="Term">Terms & Conditions</a></li>
                    <li><a href="#">Privacy Policy</a></li>
                    <li><a href="#">Risk Disclosure</a></li>
                    <li><a href="#">Refund Policy</a></li>
                    <li><a href="#">FAQ</a></li>
                </ul>
            </div>
            <div class="footer-col">
                <h3 class="footer-title">Contact Us</h3>
                <p class="footer-about">Have questions about our investment opportunities? Our team is here to help.</p>
                <p class="footer-about" style="margin-top: 1rem;">
                    <strong>Email:</strong> invest@cinevestor.in<br>
                    <strong>Phone:</strong> +91 9876543210
                </p>
            </div>
        </div>
        <div class="footer-bottom">
            <div>© 2025 Cinevestor. All Rights Reserved.</div>
            <div class="footer-legal">
                <a href="#">Privacy Policy</a>
                <a href="#">Terms of Service</a>
                <a href="#">Disclosures</a>
            </div>
        </div>
    </div>
</footer>
 
</body>
</html>