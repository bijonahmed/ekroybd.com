<template>
    <div class="page-wrapper">
        <div class="page-content">
            <div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
                <div class="ps-3">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb mb-0 p-0">
                            <li class="breadcrumb-item">
                                <router-link to="/" href="javascript:;"><i class="bx bx-home-alt"></i></router-link>
                            </li>
    
                            <li class="breadcrumb-item active" aria-current="page">HRM</li>
                        </ol>
                    </nav>
                </div>
            </div>
            <div class="row row-cols-1 row-cols-md-2 row-cols-xl-4">
                <div class="col">
                    <div class="card radius-10 bg-gradient-deepblue">
                        <Nuxt-link to="/setting/dashboard">
                            <div class="card-body">
                                <div class="d-flex align-items-center">
                                    <div class="d-flex align-items-center text-white">
                                        <p class="mb-0">Setting Master</p>
                                    </div>
                                    <div class="ms-auto">
                                        <i class='bx bx-envelope fs-3 text-white'></i>
                                    </div>
                                </div>
                            </div>
                        </Nuxt-link>
                    </div>
                </div>

               
                <div class="col">
                    <div class="card radius-10 bg-gradient-deepblue">
                        <Nuxt-link to="/employee/dashboard">
                            <div class="card-body">
                                <div class="d-flex align-items-center">
                                    <div class="d-flex align-items-center text-white">
                                        <p class="mb-0">Employee</p>
                                    </div>
                                    <div class="ms-auto">
                                        <i class='bx bx-cart fs-3 text-white'></i>
                                    </div>
                                </div>
                            </div>
                        </Nuxt-link>
                    </div>
                </div>
                <div class="col">
                    <div class="card radius-10 bg-gradient-deepblue">
                        <Nuxt-link to="/holiday/dashboard">
                            <div class="card-body">
                                <div class="d-flex align-items-center">
                                    <div class="d-flex align-items-center text-white">
                                        <p class="mb-0">Holiday Management</p>
                                    </div>
                                    <div class="ms-auto">
                                        <i class='bx bx-envelope fs-3 text-white'></i>
                                    </div>
                                </div>
                            </div>
                        </Nuxt-link>
                    </div>
                </div>
                <div class="col">
                    <div class="card radius-10 bg-gradient-deepblue">
                        <Nuxt-link to="/leave/dashboard">
                            <div class="card-body">
                                <div class="d-flex align-items-center">
                                    <div class="d-flex align-items-center text-white">
                                        <p class="mb-0">Leave Management</p>
                                    </div>
                                    <div class="ms-auto">
                                        <i class='bx bx-envelope fs-3 text-white'></i>
                                    </div>
                                </div>
                            </div>
                        </Nuxt-link>
                    </div>
                </div>
               
                <div class="col">
                    <div class="card radius-10 bg-gradient-orange">
                        <Nuxt-link to="/user/dashboard">
                            <div class="card-body">
                                <div class="d-flex align-items-center">
                                    <div class="d-flex align-items-center text-white">
                                        <p class="mb-0">Users</p>
                                    </div>
                                    <div class="ms-auto">
                                        <i class='bx bx-group fs-3 text-white'></i>
                                    </div>
                                </div>
                            </div>
                        </Nuxt-link>
                    </div>
                </div>
                <div class="col">
                    <div class="card radius-10 bg-gradient-ohhappiness">
                        <Nuxt-link to="/task/dashboard">
                            <div class="card-body">
                                <div class="d-flex align-items-center">
                                    <div class="d-flex align-items-center text-white">
                                        <p class="mb-0">Task</p>
                                    </div>
                                    <div class="ms-auto">
                                        <i class='bx bx-group fs-3 text-white'></i>
                                    </div>
                                </div>
                            </div>
                        </Nuxt-link>
                    </div>
                </div>
    
            </div>
            <!--end row-->
    
            <div class="overlay toggle-icon"></div>
            <a href="javaScript:;" class="back-to-top"><i class='bx bxs-up-arrow-alt'></i></a>
        </div>
    </div>
    </template>
    
    <script>
    import _ from 'lodash';
    export default {
        head: {
            title: 'Setting Dashboard',
        },
    
    };
    </script>
    