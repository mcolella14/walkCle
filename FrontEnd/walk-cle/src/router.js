import Vue from 'vue'
import Router from 'vue-router'
import Home from './views/Home.vue'
import Login from './views/Login.vue'
import Register from './views/Register.vue'
import AddLocation from './views/AddLocation.vue'
import Profile from './views/Profile.vue'
import DirectionsView from './views/DirectionsView.vue'
import CheckInView from './views/CheckInView.vue'

import auth from '@/auth'

Vue.use(Router)

const router = new Router({
  mode: 'history',
  base: process.env.BASE_URL,
  routes: [
    {
      path: '/',
      name: 'Home',
      component: Home
    },
    {
      path: '/login',
      name: 'Login',
      component: Login
    },
    {
      path: '/register',
      name: 'Register',
      component: Register
    },
    {
      path:'/addLocation',
      name: 'AddLocation',
      component: AddLocation
    },
    {
      path:'/profile',
      name: 'Profile',
      component: Profile
    }, 
    {
      path:'/directionsView',
      name: 'DirectionsView',
      component: DirectionsView
    },
    {
      path:'/checkInView',
      name: 'CheckInView',
      component: CheckInView
    }

  ]
});

router.beforeEach((to, from, next) => {
  // redirect to login page if not logged in and trying to access a restricted page
  const publicPages = ['/', '/login', '/register','/addLocation', 'profile', 'check'];
  const authRequired = !publicPages.includes(to.path);
  const loggedIn = auth.getUser();

  if (authRequired && !loggedIn) {
    return next('/login');
  }

  next();
});

export default router;

//router.before each 

//requiresAuth
