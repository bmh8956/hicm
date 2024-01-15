<aside class="main-sidebar col-12 col-md-3 col-lg-2 px-0">
    <div class="main-navbar">
        <nav class="navbar align-items-stretch navbar-light bg-white flex-md-nowrap border-bottom p-0">
            <a class="navbar-brand w-100 mr-0" href="#" style="line-height: 25px;">
                <div class="d-table m-auto">
                    <img id="main-logo" class="d-inline-block align-top mr-1" style="max-width: 25px;" src="static/images/shards-dashboards-logo.svg" alt="Shards Dashboard">
                    <span class="d-none d-md-inline ml-1">Shards Dashboard</span>
                </div>
            </a>
            <a class="toggle-sidebar d-sm-inline d-md-none d-lg-none">
                <i class="material-icons">&#xE5C4;</i>
            </a>
        </nav>
    </div>
    <div class="nav-wrapper">
        <ul class="nav flex-column">
            <li class="nav-item dev">
                <a class="nav-link active" href="index.html">
                    <i class="material-icons">edit</i>
                    <span>Blog Dashboard</span>
                </a>
            </li>
            <li class="nav-item dev">
                <a class="nav-link " href="components-blog-posts.jsp">
                    <i class="material-icons">vertical_split</i>
                    <span>Blog Posts</span>
                </a>
            </li>
            <li class="nav-item dev">
                <a class="nav-link " href="add-new-post.jsp">
                    <i class="material-icons">note_add</i>
                    <span>Add New Post</span>
                </a>
            </li>
            <li class="nav-item dev">
                <a class="nav-link " href="form-components.jsp">
                    <i class="material-icons">view_module</i>
                    <span>Forms &amp; Components</span>
                </a>
            </li>
            <li class="nav-item dev">
                <a class="nav-link " href="tables.jsp">
                    <i class="material-icons">table_chart</i>
                    <span>Tables</span>
                </a>
            </li>
            <li class="nav-item dev">
                <a class="nav-link " href="user-profile-lite.jsp">
                    <i class="material-icons">person</i>
                    <span>User Profile</span>
                </a>
            </li>
            <li class="nav-item dev">
                <a class="nav-link " href="errors.jsp">
                    <i class="material-icons">error</i>
                    <span>Errors</span>
                </a>
            </li>
            <li class="nav-item" id="main">
                <a class="nav-link" href="main.adm">
                    <i class="material-icons">edit</i>
                    <span>MAIN</span>
                </a>
            </li>
            <li class="nav-item" id="users">
                <a class="nav-link" href="users.adm">
                    <i class="material-icons">edit</i>
                    <span>USERS</span>
                </a>
            </li>
            <li class="nav-item" id="admin">
                <a class="nav-link" href="admin.adm">
                    <i class="material-icons">edit</i>
                    <span>ADMIN</span>
                </a>
            </li>
            <li class="nav-item" id="board">
                <a class="nav-link" href="board.adm">
                    <i class="material-icons">edit</i>
                    <span>BOARD</span>
                </a>
            </li>
            <li class="nav-item" id="category">
                <a class="nav-link" href="category.adm">
                    <i class="material-icons">edit</i>
                    <span>CATEGORY</span>
                </a>
            </li>
        </ul>
    </div>
</aside>
<script>
    let path = location.pathname
    path = path.split("/")[path.split("/").length - 1].replace(".jsp", "");
    let li = document.querySelectorAll('li');
    for(let l of li) {
        if(l.id == path) {
            l.classList.add('active')
            l.children[0].classList.add('active')
        }
    }
    if(path != 'index') {
        for(let l of li) {
            if(l.classList.contains('dev')) {
                l.style.display = 'none'
            }
        }
    }
    console.log(path)
    console.log("succ")
</script>