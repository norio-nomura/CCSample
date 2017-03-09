#if SWIFT_PACKAGE
import CCommonCrypto
#endif
import Foundation

func sha256(data: NSData) -> String {
    var buffer = [UInt8].init(repeating: 0, count: Int(CC_SHA256_DIGEST_LENGTH))
    CC_SHA256(data.bytes, CUnsignedInt(data.length), &buffer)
    return buffer.map({ String(format: "%02x", $0) }).joined()
}
