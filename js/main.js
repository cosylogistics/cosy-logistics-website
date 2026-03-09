// 舒室国际物流网站JavaScript功能
document.addEventListener('DOMContentLoaded', function() {
    // 语言切换功能
    const langButtons = document.querySelectorAll('.lang-btn');
    const htmlElement = document.documentElement;
    
    // 设置默认语言（根据浏览器语言或默认为中文）
    const defaultLang = navigator.language.startsWith('zh') ? 'zh' : 'en';
    setLanguage(defaultLang);
    
    // 语言按钮点击事件
    langButtons.forEach(button => {
        button.addEventListener('click', function() {
            const lang = this.dataset.lang;
            setLanguage(lang);
        });
    });
    
    // 设置语言函数
    function setLanguage(lang) {
        // 更新HTML元素的data-lang属性
        htmlElement.setAttribute('data-lang', lang);
        
        // 更新活动按钮状态
        langButtons.forEach(btn => {
            if (btn.dataset.lang === lang) {
                btn.classList.add('active');
            } else {
                btn.classList.remove('active');
            }
        });
        
        // 保存用户选择到localStorage
        localStorage.setItem('preferredLanguage', lang);
    }
    
    // 检查localStorage中的用户偏好
    const savedLang = localStorage.getItem('preferredLanguage');
    if (savedLang) {
        setLanguage(savedLang);
    }
    
    // 移动端菜单切换
    const menuToggle = document.querySelector('.menu-toggle');
    const navMenu = document.querySelector('.nav-menu');
    
    if (menuToggle && navMenu) {
        menuToggle.addEventListener('click', function() {
            menuToggle.classList.toggle('active');
            navMenu.classList.toggle('active');
        });
        
        // 点击菜单项后关闭移动端菜单
        const navLinks = document.querySelectorAll('.nav-link');
        navLinks.forEach(link => {
            link.addEventListener('click', function() {
                menuToggle.classList.remove('active');
                navMenu.classList.remove('active');
            });
        });
    }
    
    // 平滑滚动到页面部分
    const scrollToSection = (sectionId) => {
        const section = document.getElementById(sectionId);
        if (section) {
            section.scrollIntoView({ behavior: 'smooth' });
        }
    };
    
    // 导航链接点击事件（用于单页应用风格）
    // 如果需要多页面导航，这部分可以移除
    const navLinks = document.querySelectorAll('.nav-link');
    navLinks.forEach(link => {
        link.addEventListener('click', function(e) {
            const href = this.getAttribute('href');
            if (href.startsWith('#')) {
                e.preventDefault();
                const sectionId = href.substring(1);
                scrollToSection(sectionId);
            }
        });
    });
    
    // 表单提交处理
    const contactForm = document.getElementById('contactForm');
    if (contactForm) {
        contactForm.addEventListener('submit', function(e) {
            e.preventDefault();
            
            // 这里可以添加实际的表单提交逻辑
            // 例如发送到服务器或邮件服务
            
            // 获取当前语言以显示相应消息
            const currentLang = htmlElement.getAttribute('data-lang');
            const successMessage = currentLang === 'zh' 
                ? '感谢您的留言！我们会尽快与您联系。' 
                : 'Thank you for your message! We will contact you soon.';
            
            alert(successMessage);
            contactForm.reset();
        });
    }
    
    // 添加页面加载淡入效果
    const mainContent = document.querySelector('.main-content');
    if (mainContent) {
        mainContent.classList.add('fade-in');
    }
});