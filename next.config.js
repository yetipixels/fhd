/** @type {import('next').NextConfig} */
const nextConfig = {
  images: {
    remotePatterns: [
      {
        protocol: 'https',
        hostname: 'images.unsplash.com',
      },
      {
        protocol: 'https',
        hostname: 'res.cloudinary.com',
      },
      {
        protocol: 'https',
        hostname: 'fairhomedecor.com',
      },
    ],
  },
  async rewrites() {
    return [
      {
        source: '/pages/catalogue.html',
        destination: '/catalogue',
      },
      {
        source: '/pages/cart.html',
        destination: '/cart',
      },
      {
        source: '/pages/account.html',
        destination: '/account',
      },
      {
        source: '/pages/about.html',
        destination: '/about',
      },
      {
        source: '/pages/contact.html',
        destination: '/contact',
      },
      {
        source: '/index.html',
        destination: '/',
      },
    ];
  },
};

module.exports = nextConfig;
