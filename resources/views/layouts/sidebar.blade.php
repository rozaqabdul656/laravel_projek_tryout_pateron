  <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

        <!-- Sidebar - Brand -->
        <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
          <div class="sidebar-brand-icon ">
            <img src="{{asset('images/gambar/logo2.png')}}" alt="logo-pateron" width="100">
          </div>
        </a>
        <hr class="sidebar-divider my-0">

          <li class="nav-item"> 
            <a class="nav-link" href="{{url('/home')}}">
              <i class="menu-icon mdi mdi-television"></i>
              <span class="menu-title">Dashboard</span>
            </a>
          </li>
          <hr class="sidebar-divider my-0">

          @if(Auth::user()->level == 'ADMIN')
          <li class="nav-item ">
            <a class="nav-link " data-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
              <i class="menu-icon mdi mdi-content-copy"></i>
              <span class="menu-title">Soal</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="ui-basic">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item">
                  <a class="nav-link" href="{{route('soal-tryout.create')}}">Tambah Soal</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link " href="{{route('soal-tryout.index')}}">Edit Soal Saintek</a>
                </li>
                 <li class="nav-item">
                  <a class="nav-link " href="{{route('soals.index')}}">Edit Soal Soshum</a>
                </li>
              </ul>
            </div>
          </li>
          @endif
           @if(Auth::user()->level == 'ADMIN')
         
          <li class="nav-item "> 
            <a class="nav-link" href="{{url('/tryout')}}">
              <i class="menu-icon mdi mdi-television"></i>
              <span class="menu-title">Go Try Out</span>
            </a>
          </li>
          @endif
           @if(Auth::user()->level == 'ADMIN')
         
          <li class="nav-item ">
            <a class="nav-link" href="{{url('/register-peserta')}}">
              <i class="menu-icon mdi mdi-backup-restore"></i>
              <span class="menu-title">Registrasi Try Out</span>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="{{url('/daftar-peserta')}}">
              <i class="menu-icon mdi mdi-backup-restore"></i>
              <span class="menu-title">Daftar Try Out</span>
            </a>
          </li>
          
          @endif
           @if(Auth::user()->level == 'ADMIN')
          <li class="nav-item ">
            <a class="nav-link" href="{{url('/hasiltryout')}}">
              <i class="menu-icon mdi mdi-backup-restore"></i>
              <span class="menu-title">Hasil Try Out</span>
            </a>
          </li>
          @endif

          <li class="nav-item ">
            <a class="nav-link" href="{{url('/materi')}}">
              <i class="menu-icon mdi mdi-backup-restore"></i>
              <span class="menu-title">Materi</span>
            </a>
          </li>
         @if(Auth::user()->level == 'hidde')
          
          <li class="nav-item">
            <a class="nav-link" href="index.html">
          <i class="fas fa-chart-line"></i>
            <span>Your Progress</span></a>
          </li>
          @endif

        <div class="text-center d-none d-md-inline">
            <button class="rounded-circle border-0" id="sidebarToggle"></button>
        </div>
  </ul>
