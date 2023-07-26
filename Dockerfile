# Stage 2: Set up a web server to serve the static assets
FROM nginx:alpine

COPY --from=build /app/dist/santeLib /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]