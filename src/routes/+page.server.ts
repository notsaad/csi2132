import createHotels from '$lib/server/db';
import type { PageServerLoad } from './$types';

export const load = (() => {
	const tracks = createHotels();

	return {
		tracks
	};
}) satisfies PageServerLoad;