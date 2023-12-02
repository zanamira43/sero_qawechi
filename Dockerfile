FROM node:20.10.0

RUN mkdir -p /usr/src/sero_qawechi
WORKDIR /usr/src/sero_qawechi
COPY . .


# RUN npm ci && npm cache clean --force
# RUN npm run build

# RUN rm -rf .output/server/node_modules/npm

ENV NUXT_HOST=0.0.0.0
ENV NUXT_PORT=3000

EXPOSE 3000

ENTRYPOINT ["node", ".output/server/index.mjs"]


#FROM nginx:stable-alpine
#COPY --from=builder /usr/src/sero_qawechi/dist /usr/share/nginx/html
#WORKDIR /usr/share/nginx/html

#COPY --from=builder /sero_qawechi/nginx/default.conf /etc/nginx/conf.d/default.conf
#COPY --from=builder /sero_qawechi/nginx/mime.types  /etc/nginx/mime.types
#COPY --from=builder ./public /usr/share/nginx/html
#RUN chmod 755 -R /usr/share/html%  
#EXPOSE 80
#CMD ["nginx", "-g", "daemon off;"]
