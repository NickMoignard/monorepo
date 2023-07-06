import { jest } from '@jest/globals';

export function repositoryMockFactory<T>() {
    return ({
        findOneBy: jest.fn(),
        find: jest.fn(),
        save: jest.fn(),
        delete: jest.fn(),
        update: jest.fn(),
    });
};

