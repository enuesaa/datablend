import { get, mutate } from '$lib/graphql/client'
import type { Planet, MutationCreatePlanetArgs, MutationDeletePlanetArgs } from './types'

const listQuery = `query {
  listPlanets {
    id
    name
    comment
  }
}`

export const listPlanets = () => get<Planet[]>(listQuery, {
	usekey: 'listPlanets',
	initialData: [],
})

const getQuery = `query ($name: String!) {
	getPlanet(name: $name) {
    id
    name
    comment
	}
}`

export const getPlanet = (name: string) => get<Planet>(getQuery, {
	vars: {name},
	usekey: 'getPlanet',
})

const createQuery = `mutation ($name: String!, $comment: String!) {
  createPlanet(name: $name, comment: $comment)
}`
export const useCreatePlanet = () => mutate<MutationCreatePlanetArgs>(createQuery, {
	usekey: 'createPlanet',
})


const deleteQuery = `mutation ($name: String!) {
  deletePlanet(name: $name)
}`
export const useDeletePlanet = () => mutate<MutationDeletePlanetArgs>(deleteQuery, {
	usekey: 'deletePlanet',
})
