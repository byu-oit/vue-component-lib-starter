const { atoms } = require('../../globals')

describe('Example', function() {
  it('can visit example page', function() {
    cy.visit(`${atoms}/example`)
    expect(true).to.equal(true)
  })
})
