import { ApolloGateway } from "@apollo/gateway";

export const gateway = new ApolloGateway({
    serviceList: [
        { name: 'accounts', url: 'http://localhost:8001/graphql' },
        { name: 'products', url: 'http://localhost:8002/graphql' },
        { name: 'reviews', url: 'http://localhost:8003/graphql' },
        { name: 'inventory', url: 'http://localhost:8004/graphql' },
    ],
});
