import { createRouter, createWebHashHistory, createWebHistory } from "vue-router"

const routes = [
    {
        path: "/",
        component: () => import("../views/index.vue")
    },
    {
        path: "/website",
        component: () => import("../views/website.vue")
    },
    {
        path: "/content",
        component: () => import("../views/content.vue")
    },
    {
        path: "/about",
        component: () => import("../components/About.vue")
    },
    {
        path: "/click",
        component: () => import("../views/click.vue")
    },
]

const router = createRouter({
    //使用url的#符号之后的部分模拟url路径的变化,因为不会触发页面刷新,所以不需要服务端支持
    // history: createWebHashHistory(process.env.BASE_URL),
    history: createWebHistory(),
    routes
})

export default router
