import Foundation
import Capacitor

// This file re-exports the CAPBridgedPlugin conformance for SPM.
// The full plugin implementation remains in VideoRecorderPlugin.swift (copied from Plugin.swift).
// Add CAPBridgedPlugin conformance via extension so Plugin.swift needs no modification.
extension VideoRecorder: CAPBridgedPlugin {
    public var identifier: String { "VideoRecorder" }
    public var jsName: String { "VideoRecorder" }
    public var pluginMethods: [CAPPluginMethod] {[
        CAPPluginMethod(name: "initialize", returnType: CAPPluginReturnPromise),
        CAPPluginMethod(name: "destroy", returnType: CAPPluginReturnPromise),
        CAPPluginMethod(name: "flipCamera", returnType: CAPPluginReturnPromise),
        CAPPluginMethod(name: "toggleFlash", returnType: CAPPluginReturnPromise),
        CAPPluginMethod(name: "enableFlash", returnType: CAPPluginReturnPromise),
        CAPPluginMethod(name: "disableFlash", returnType: CAPPluginReturnPromise),
        CAPPluginMethod(name: "isFlashAvailable", returnType: CAPPluginReturnPromise),
        CAPPluginMethod(name: "isFlashEnabled", returnType: CAPPluginReturnPromise),
        CAPPluginMethod(name: "addPreviewFrameConfig", returnType: CAPPluginReturnPromise),
        CAPPluginMethod(name: "editPreviewFrameConfig", returnType: CAPPluginReturnPromise),
        CAPPluginMethod(name: "switchToPreviewFrame", returnType: CAPPluginReturnPromise),
        CAPPluginMethod(name: "showPreviewFrame", returnType: CAPPluginReturnPromise),
        CAPPluginMethod(name: "hidePreviewFrame", returnType: CAPPluginReturnPromise),
        CAPPluginMethod(name: "startRecording", returnType: CAPPluginReturnPromise),
        CAPPluginMethod(name: "stopRecording", returnType: CAPPluginReturnPromise),
        CAPPluginMethod(name: "getDuration", returnType: CAPPluginReturnPromise)
    ]}
}
