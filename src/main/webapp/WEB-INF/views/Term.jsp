<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Terms and Conditions | Cinevestor</title>
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
        
         
        
        /* Page Header */
        .page-header {
            padding: 8rem 0 4rem;
            text-align: center;
            position: relative;
        }
        
        .page-header h1 {
            font-size: 3rem;
            margin-top: 1.5rem;
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
        
        /* Terms Content */
        .terms-content {
            padding: 4rem 0;
            position: relative;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        
        .terms-section {
            margin-bottom: 3rem;
            background: var(--card-bg);
            width: 71rem;
            padding: 2.5rem;
            border-radius: 10px;
            border: 1px solid var(--card-border);
        }
        
        .terms-section h2 {
            font-size: 1.8rem;
            margin-bottom: 1.5rem;
            color: var(--text-primary);
            position: relative;
            padding-bottom: 0.5rem;
        }
        
        .terms-section h2::after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 0;
            width: 50px;
            height: 3px;
            background: linear-gradient(90deg, var(--accent-1), var(--accent-3));
        }
        
        .terms-section h3 {
            font-size: 1.3rem;
            margin: 1.5rem 0 1rem;
            color: var(--text-primary);
        }
        
        .terms-section p, .terms-section ul {
            color: var(--text-secondary);
            margin-bottom: 1rem;
            line-height: 1.8;
        }
        
        .terms-section ul {
            padding-left: 1.5rem;
        }
        
        .terms-section li {
            margin-bottom: 0.8rem;
            position: relative;
        }
        
        .terms-section li::before {
            content: '';
            display: inline-block;
            width: 6px;
            height: 6px;
            background: var(--accent-1);
            border-radius: 50%;
            margin-right: 0.5rem;
            position: relative;
            top: -3px;
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
        @media (max-width: 768px) {
             
            
            .page-header {
                padding-top: 6rem;
            }
            
            .page-header h1 {
                font-size: 2.5rem;
            }
            
            .terms-section {
                padding: 1.5rem;
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

    <!-- Page Header -->
    <section class="page-header">
        <div class="container">
            <h1>Terms and Conditions</h1>
            <p>Welcome to Cinevestor.in! Please read these Terms of Use carefully before using our platform.</p>
        </div>
    </section>
    
    <!-- Terms Content -->
    <section class="terms-content">
        <div class="container">
            <div class="terms-section">
                <h2>Welcome to Cinevestor.in!</h2>
                <p>Cinevestor.in ("Cinevestor") provides a crowdfunding platform to support film and web series projects. These Terms of Use govern your access to and use of the Services provided by Vithal Vision, the operator of Cinevestor.</p>
            </div>
            
            <div class="terms-section">
                <h2>1. Acceptance of Terms</h2>
                <p>By registering for an account, accessing the website, or contributing to a campaign, you accept and agree to be bound by these Terms of Service. If you do not want to agree to these Terms, you should not register, access the website, or contribute content or donations.</p>
            </div>
            
            <div class="terms-section">
                <h2>2. Eligibility to Use the Services</h2>
                <p>You must be at least 18 years old to use Cinevestor's services. By agreeing to these Terms, you represent and warrant that:</p>
                <ul>
                    <li>You are at least 18 years old.</li>
                    <li>All registration information provided is accurate, truthful, and up-to-date.</li>
                </ul>
            </div>
            
            <div class="terms-section">
                <h2>3. Use of Funds by Creators</h2>
                <p>When supporting a Campaign, you are transacting with the Campaign's Creator who is solely responsible for fulfilling pledged incentives, including any rewards and Refund policies. Creators may only use the funds as detailed in their Campaign page and may not use funds for any illegal purpose prohibited by our Community Guidelines.</p>
            </div>
            
            <div class="terms-section">
                <h2>4. Your Content & Conduct</h2>
                <p>You agree not to upload or share content that violates our Community Guidelines, which prohibit intellectual property violations, personal attacks, offensive language and other antisocial behavior. You are solely responsible for Your Content and unauthorized use of others' intellectual property.</p>
            </div>
            
            <div class="terms-section">
                <h2>5. Acceptable Use</h2>
                <p>When accessing or using the Services, you agree that you will not violate any law, contract, intellectual property or other right. The following non-exhaustive list of prohibited actions applies:</p>
                <ul>
                    <li>Spamming</li>
                    <li>Intellectual property infringement</li>
                    <li>Harassment</li>
                    <li>Harm to minors</li>
                    <li>Account sharing</li>
                    <li>Fraud</li>
                </ul>
            </div>
            
            <div class="terms-section">
                <h2>6. Termination</h2>
                <p>We may suspend your access to all or part of the Services without notice and at our sole discretion. You may cancel your account at any time via the Site's account management tools.</p>
            </div>
            
            <div class="terms-section">
                <h2>7. Disclaimers of Warranties & Limitations on Liability</h2>
                <p>We provide Services on an "as is" and "as available" basis without giving warranties of any kind. We disclaim any liability for service interruptions or damages that result from use of the Site or Services.</p>
            </div>
            
            <div class="terms-section">
                <h2>8. Governing Law</h2>
                <p>These Terms are governed by the laws of India without regards to conflict of law provisions. If a dispute arises that we cannot resolve informally, Indian courts will have exclusive jurisdiction.</p>
            </div>
            
            <div class="terms-section">
                <h2>9. Changes</h2>
                <p>Cinevestor may modify these Terms from time to time and will post updated versions on the Site. We recommend you revisit these pages periodically to stay informed on any changes.</p>
                <p>Please contact reach@cinevestor.in if you have any questions regarding these Terms.</p>
            </div>
        </div>
    </section>
    
    <%@ include file="Footer.jsp"%>

   
</body>
</html>