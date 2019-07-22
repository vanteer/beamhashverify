const assert = require('assert');
const equihash = require('bindings')('equihashverify.node');

describe('equihashverify', function () {
    it('BEAM Valid', function () {
        const header = Buffer('af9abfe2d99248cdd5856c148cd7f0464f1df3a2de327ec3d34d122d9306a5d4', 'hex');
        const nonceBuffer = Buffer('c2369b6a80be6420', 'hex');
        const solnBuffer = Buffer('0153a16af2ce3432d93bf9de830e7ba6b6f0a6e9894dc3552d0111e7404ddf6e87237577d068903c08179beffdf60b2821eda26408464719ae48ab23391b6d2d693eab0ef2625907e8f55f8c56cd11b88adfe4c318de24c65e4f9f1c024a998c1eb67c1ce77c2268', 'hex');
        var isValid = equihash.verify(header, nonceBuffer, solnBuffer, 150, 5);
        assert.equal(isValid, true);
    });
    it('BEAM Valid', function () {
        const header = Buffer('73180d65e66e8216d65671f578f81538b62c844d78e048bbcd4b8386b0d61459', 'hex');
        const nonceBuffer = Buffer('970d24ce116f5e70', 'hex');
        const solnBuffer = Buffer('01917a954d7a9944e8634836aa133671e5c5af54b57b9a946ec122fe1808cfbadc75440bbabf72847db8bcd51328e93a7b0b0da605b2326dc9b63250bf2ba0246466f2383a001d9b637cd2e2010d1e49b4dac2f1d6d04c7b814acd47e221daba681654cfef12eb75', 'hex');
        var isValid = equihash.verify(header, nonceBuffer, solnBuffer, 150, 5);
        assert.equal(isValid, true);
    });
    it('BEAM with invalid headernonce', function () {
        const header = Buffer('00', 'hex');
        const nonceBuffer = Buffer('c2369b6a80be6420', 'hex');
        var solnBuffer = Buffer('0153a16af2ce3432d93bf9de830e7ba6b6f0a6e9894dc3552d0111e7404ddf6e87237577d068903c08179beffdf60b2821eda26408464719ae48ab23391b6d2d693eab0ef2625907e8f55f8c56cd11b88adfe4c318de24c65e4f9f1c024a998c1eb67c1ce77c2268', 'hex');
        var isValid = equihash.verify(header, nonceBuffer, solnBuffer, 150, 5);
        assert.equal(isValid, false);
    });
    it('BEAM with invalid solution', function () {
        const header = Buffer('af9abfe2d99248cdd5856c148cd7f0464f1df3a2de327ec3d34d122d9306a5d4', 'hex');
        const nonceBuffer = Buffer('c2369b6a80be6420', 'hex');
        var solnBuffer = Buffer('000050b19517e193f6363632e9165f741f567e93aad0c59727df22c83573ed9ca971e9aef1237b552a8a7fc8a3fe26e02b9fc5580776a442b8294a723202c0448b1af0281caa56ca4aa886b1b20938b7de6cfe62dac397dacc625d795ccf3a691add3556f7f59180', 'hex');
        var isValid = equihash.verify(header, nonceBuffer, solnBuffer, 150, 5);
        assert.equal(isValid, false);
    });

    it('BEAM Match Difficulty', function () {
        var solnBuffer = Buffer('0153a16af2ce3432d93bf9de830e7ba6b6f0a6e9894dc3552d0111e7404ddf6e87237577d068903c08179beffdf60b2821eda26408464719ae48ab23391b6d2d693eab0ef2625907e8f55f8c56cd11b88adfe4c318de24c65e4f9f1c024a998c1eb67c1ce77c2268', 'hex');
        var isValid = equihash.verifyDiff(solnBuffer, 134217728);
        assert.equal(isValid, true);
        var solnBuffer = Buffer('01917a954d7a9944e8634836aa133671e5c5af54b57b9a946ec122fe1808cfbadc75440bbabf72847db8bcd51328e93a7b0b0da605b2326dc9b63250bf2ba0246466f2383a001d9b637cd2e2010d1e49b4dac2f1d6d04c7b814acd47e221daba681654cfef12eb75', 'hex');
        var isValid = equihash.verifyDiff(solnBuffer, 10000000000);
        assert.equal(isValid, false);
        var solnBuffer = Buffer('01917a954d7a9944e8634836aa133671e5c5af54b57b9a946ec122fe1808cfbadc75440bbabf72847db8bcd51328e93a7b0b0da605b2326dc9b63250bf2ba0246466f2383a001d9b637cd2e2010d1e49b4dac2f1d6d04c7b814acd47e221daba681654cfef12eb75', 'hex');
        var isValid = equihash.verifyDiff(solnBuffer, 134217728);
        assert.equal(isValid, true);
        var solnBuffer = Buffer('0049e4eb87d28ca56cc73231e661b82eed06d4a8b5698b8c8bab1646edca7240e22ad4a220aa1eab1552b5dba3aee68c3fd99d070218f3df4b502349896e9604433481db92bfefbd93655fb4515b05abd08661e592b9efa4e124a0211f422bef487616e8eddc2832', 'hex');
        var isValid = equihash.verifyDiff(solnBuffer, 10000000000);
        assert.equal(isValid, false);
    });
});
