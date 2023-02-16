import { accountsSchema } from "./accounts.js";
import { productsSchema } from "./products.js";
import { reviewsSchema } from "./reviews.js";
import { inventorySchema } from "./inventory.js";

export const serviceSchemas = [
    accountsSchema,
    productsSchema,
    reviewsSchema,
    inventorySchema,
]