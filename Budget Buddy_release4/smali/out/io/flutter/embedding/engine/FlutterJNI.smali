.class public Lio/flutter/embedding/engine/FlutterJNI;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/engine/FlutterJNI$b;,
        Lio/flutter/embedding/engine/FlutterJNI$a;,
        Lio/flutter/embedding/engine/FlutterJNI$c;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FlutterJNI"

.field private static asyncWaitForVsyncDelegate:Lio/flutter/embedding/engine/FlutterJNI$b; = null

.field private static displayDensity:F = -1.0f

.field private static displayHeight:F = -1.0f

.field private static displayWidth:F = -1.0f

.field private static initCalled:Z = false

.field private static loadLibraryCalled:Z = false

.field private static prefetchDefaultFontManagerCalled:Z = false

.field private static refreshRateFPS:F = 60.0f

.field private static vmServiceUri:Ljava/lang/String;


# instance fields
.field private accessibilityDelegate:Lio/flutter/embedding/engine/FlutterJNI$a;

.field private deferredComponentManager:Lg0/a;

.field private final engineLifecycleListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/flutter/embedding/engine/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private final flutterUiDisplayListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lq0/b;",
            ">;"
        }
    .end annotation
.end field

.field private localizationPlugin:Lt0/b;

.field private final mainLooper:Landroid/os/Looper;

.field private nativeShellHolderId:Ljava/lang/Long;

.field private platformMessageHandler:Lf0/f;

.field private platformViewsController:Lio/flutter/plugin/platform/v;

.field private shellHolderLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->shellHolderLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->engineLifecycleListeners:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->flutterUiDisplayListeners:Ljava/util/Set;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->mainLooper:Landroid/os/Looper;

    return-void
.end method

.method public static synthetic a(JLandroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lio/flutter/embedding/engine/FlutterJNI;->lambda$decodeImage$0(JLandroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V

    return-void
.end method

.method private static asyncWaitForVsync(J)V
    .registers 3

    sget-object v0, Lio/flutter/embedding/engine/FlutterJNI;->asyncWaitForVsyncDelegate:Lio/flutter/embedding/engine/FlutterJNI$b;

    if-eqz v0, :cond_8

    invoke-interface {v0, p0, p1}, Lio/flutter/embedding/engine/FlutterJNI$b;->a(J)V

    return-void

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "An AsyncWaitForVsyncDelegate must be registered with FlutterJNI before asyncWaitForVsync() is invoked."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static decodeImage(Ljava/nio/ByteBuffer;J)Landroid/graphics/Bitmap;
    .registers 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_1d

    invoke-static {p0}, Landroid/graphics/ImageDecoder;->createSource(Ljava/nio/ByteBuffer;)Landroid/graphics/ImageDecoder$Source;

    move-result-object p0

    :try_start_b
    new-instance v0, Lio/flutter/embedding/engine/f;

    invoke-direct {v0, p1, p2}, Lio/flutter/embedding/engine/f;-><init>(J)V

    invoke-static {p0, v0}, Landroid/graphics/ImageDecoder;->decodeBitmap(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_14} :catch_15

    return-object p0

    :catch_15
    move-exception p0

    const-string p1, "FlutterJNI"

    const-string p2, "Failed to decode image"

    invoke-static {p1, p2, p0}, Le0/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1d
    return-object v1
.end method

.method private ensureAttachedToNative()V
    .registers 3

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativeShellHolderId:Ljava/lang/Long;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot execute operation because FlutterJNI is not attached to native."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ensureNotAttachedToNative()V
    .registers 3

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativeShellHolderId:Ljava/lang/Long;

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot execute operation because FlutterJNI is attached to native."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ensureRunningOnMainThread()V
    .registers 4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/embedding/engine/FlutterJNI;->mainLooper:Landroid/os/Looper;

    if-ne v0, v1, :cond_9

    return-void

    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Methods marked with @UiThread must be executed on the main thread. Current thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getObservatoryUri()Ljava/lang/String;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lio/flutter/embedding/engine/FlutterJNI;->vmServiceUri:Ljava/lang/String;

    return-object v0
.end method

.method public static getVMServiceUri()Ljava/lang/String;
    .registers 1

    sget-object v0, Lio/flutter/embedding/engine/FlutterJNI;->vmServiceUri:Ljava/lang/String;

    return-object v0
.end method

.method private handlePlatformMessageResponse(ILjava/nio/ByteBuffer;)V
    .registers 4

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->platformMessageHandler:Lf0/f;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2}, Lf0/f;->d(ILjava/nio/ByteBuffer;)V

    :cond_7
    return-void
.end method

.method private static synthetic lambda$decodeImage$0(JLandroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .registers 5

    sget-object p4, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {p4}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/graphics/ImageDecoder;->setTargetColorSpace(Landroid/graphics/ColorSpace;)V

    const/4 p4, 0x1

    invoke-virtual {p2, p4}, Landroid/graphics/ImageDecoder;->setAllocator(I)V

    invoke-virtual {p3}, Landroid/graphics/ImageDecoder$ImageInfo;->getSize()Landroid/util/Size;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p3

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    invoke-static {p0, p1, p3, p2}, Lio/flutter/embedding/engine/FlutterJNI;->nativeImageHeaderCallback(JII)V

    return-void
.end method

.method private native nativeAttach(Lio/flutter/embedding/engine/FlutterJNI;)J
.end method

.method private native nativeCleanupMessageData(J)V
.end method

.method private native nativeDeferredComponentInstallFailure(ILjava/lang/String;Z)V
.end method

.method private native nativeDestroy(J)V
.end method

.method private native nativeDispatchEmptyPlatformMessage(JLjava/lang/String;I)V
.end method

.method private native nativeDispatchPlatformMessage(JLjava/lang/String;Ljava/nio/ByteBuffer;II)V
.end method

.method private native nativeDispatchPointerDataPacket(JLjava/nio/ByteBuffer;I)V
.end method

.method private native nativeDispatchSemanticsAction(JIILjava/nio/ByteBuffer;I)V
.end method

.method private native nativeFlutterTextUtilsIsEmoji(I)Z
.end method

.method private native nativeFlutterTextUtilsIsEmojiModifier(I)Z
.end method

.method private native nativeFlutterTextUtilsIsEmojiModifierBase(I)Z
.end method

.method private native nativeFlutterTextUtilsIsRegionalIndicator(I)Z
.end method

.method private native nativeFlutterTextUtilsIsVariationSelector(I)Z
.end method

.method private native nativeGetBitmap(J)Landroid/graphics/Bitmap;
.end method

.method private native nativeGetIsSoftwareRenderingEnabled()Z
.end method

.method public static native nativeImageHeaderCallback(JII)V
.end method

.method private static native nativeInit(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end method

.method private native nativeInvokePlatformMessageEmptyResponseCallback(JI)V
.end method

.method private native nativeInvokePlatformMessageResponseCallback(JILjava/nio/ByteBuffer;I)V
.end method

.method private native nativeLoadDartDeferredLibrary(JI[Ljava/lang/String;)V
.end method

.method public static native nativeLookupCallbackInformation(J)Lio/flutter/view/FlutterCallbackInformation;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method private native nativeMarkTextureFrameAvailable(JJ)V
.end method

.method private native nativeNotifyLowMemoryWarning(J)V
.end method

.method private native nativeOnVsync(JJJ)V
.end method

.method private static native nativePrefetchDefaultFontManager()V
.end method

.method private native nativeRegisterTexture(JJLjava/lang/ref/WeakReference;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/ref/WeakReference<",
            "Lio/flutter/embedding/engine/renderer/SurfaceTextureWrapper;",
            ">;)V"
        }
    .end annotation
.end method

.method private native nativeRunBundleAndSnapshotFromLibrary(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/AssetManager;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/res/AssetManager;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method private native nativeSetAccessibilityFeatures(JI)V
.end method

.method private native nativeSetSemanticsEnabled(JZ)V
.end method

.method private native nativeSetViewportMetrics(JFIIIIIIIIIIIIIII[I[I[I)V
.end method

.method private native nativeSpawn(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lio/flutter/embedding/engine/FlutterJNI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/flutter/embedding/engine/FlutterJNI;"
        }
    .end annotation
.end method

.method private native nativeSurfaceChanged(JII)V
.end method

.method private native nativeSurfaceCreated(JLandroid/view/Surface;)V
.end method

.method private native nativeSurfaceDestroyed(J)V
.end method

.method private native nativeSurfaceWindowChanged(JLandroid/view/Surface;)V
.end method

.method private native nativeUnregisterTexture(JJ)V
.end method

.method private native nativeUpdateDisplayMetrics(J)V
.end method

.method private native nativeUpdateJavaAssetManager(JLandroid/content/res/AssetManager;Ljava/lang/String;)V
.end method

.method private native nativeUpdateRefreshRate(F)V
.end method

.method private onPreEngineRestart()V
    .registers 3

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->engineLifecycleListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/embedding/engine/a$b;

    invoke-interface {v1}, Lio/flutter/embedding/engine/a$b;->b()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private updateCustomAccessibilityActions(Ljava/nio/ByteBuffer;[Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->accessibilityDelegate:Lio/flutter/embedding/engine/FlutterJNI$a;

    if-eqz v0, :cond_a

    invoke-interface {v0, p1, p2}, Lio/flutter/embedding/engine/FlutterJNI$a;->c(Ljava/nio/ByteBuffer;[Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method private updateSemantics(Ljava/nio/ByteBuffer;[Ljava/lang/String;[Ljava/nio/ByteBuffer;)V
    .registers 5

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->accessibilityDelegate:Lio/flutter/embedding/engine/FlutterJNI$a;

    if-eqz v0, :cond_a

    invoke-interface {v0, p1, p2, p3}, Lio/flutter/embedding/engine/FlutterJNI$a;->b(Ljava/nio/ByteBuffer;[Ljava/lang/String;[Ljava/nio/ByteBuffer;)V

    :cond_a
    return-void
.end method


# virtual methods
.method public addEngineLifecycleListener(Lio/flutter/embedding/engine/a$b;)V
    .registers 3

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->engineLifecycleListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addIsDisplayingFlutterUiListener(Lq0/b;)V
    .registers 3

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->flutterUiDisplayListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public attachToNative()V
    .registers 3

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureNotAttachedToNative()V

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->shellHolderLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_f
    invoke-virtual {p0, p0}, Lio/flutter/embedding/engine/FlutterJNI;->performNativeAttach(Lio/flutter/embedding/engine/FlutterJNI;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativeShellHolderId:Ljava/lang/Long;
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_23

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->shellHolderLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_23
    move-exception v0

    iget-object v1, p0, Lio/flutter/embedding/engine/FlutterJNI;->shellHolderLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public cleanupMessageData(J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lio/flutter/embedding/engine/FlutterJNI;->nativeCleanupMessageData(J)V

    return-void
.end method

.method public computePlatformResolvedLocale([Ljava/lang/String;)[Ljava/lang/String;
    .registers 10

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->localizationPlugin:Lt0/b;

    const/4 v1, 0x0

    if-nez v0, :cond_8

    new-array p1, v1, [Ljava/lang/String;

    return-object p1

    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_e
    array-length v3, p1

    if-ge v2, v3, :cond_47

    add-int/lit8 v3, v2, 0x0

    aget-object v3, p1, v3

    add-int/lit8 v4, v2, 0x1

    aget-object v4, p1, v4

    add-int/lit8 v5, v2, 0x2

    aget-object v5, p1, v5

    new-instance v6, Ljava/util/Locale$Builder;

    invoke-direct {v6}, Ljava/util/Locale$Builder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2b

    invoke-virtual {v6, v3}, Ljava/util/Locale$Builder;->setLanguage(Ljava/lang/String;)Ljava/util/Locale$Builder;

    :cond_2b
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_34

    invoke-virtual {v6, v4}, Ljava/util/Locale$Builder;->setRegion(Ljava/lang/String;)Ljava/util/Locale$Builder;

    :cond_34
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3d

    invoke-virtual {v6, v5}, Ljava/util/Locale$Builder;->setScript(Ljava/lang/String;)Ljava/util/Locale$Builder;

    :cond_3d
    invoke-virtual {v6}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x3

    goto :goto_e

    :cond_47
    iget-object p1, p0, Lio/flutter/embedding/engine/FlutterJNI;->localizationPlugin:Lt0/b;

    invoke-virtual {p1, v0}, Lt0/b;->c(Ljava/util/List;)Ljava/util/Locale;

    move-result-object p1

    if-nez p1, :cond_52

    new-array p1, v1, [Ljava/lang/String;

    return-object p1

    :cond_52
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p1}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    return-object v0
.end method

.method public createOverlaySurface()Lio/flutter/embedding/engine/FlutterOverlaySurface;
    .registers 3

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->platformViewsController:Lio/flutter/plugin/platform/v;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lio/flutter/plugin/platform/v;->L()Lio/flutter/embedding/engine/FlutterOverlaySurface;

    move-result-object v0

    return-object v0

    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "platformViewsController must be set before attempting to position an overlay surface"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deferredComponentInstallFailure(ILjava/lang/String;Z)V
    .registers 4

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    invoke-direct {p0, p1, p2, p3}, Lio/flutter/embedding/engine/FlutterJNI;->nativeDeferredComponentInstallFailure(ILjava/lang/String;Z)V

    return-void
.end method

.method public destroyOverlaySurfaces()V
    .registers 3

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->platformViewsController:Lio/flutter/plugin/platform/v;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lio/flutter/plugin/platform/v;->O()V

    return-void

    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "platformViewsController must be set before attempting to destroy an overlay surface"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public detachFromNativeAndReleaseResources()V
    .registers 3

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureAttachedToNative()V

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->shellHolderLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_f
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativeShellHolderId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lio/flutter/embedding/engine/FlutterJNI;->nativeDestroy(J)V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativeShellHolderId:Ljava/lang/Long;
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_25

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->shellHolderLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_25
    move-exception v0

    iget-object v1, p0, Lio/flutter/embedding/engine/FlutterJNI;->shellHolderLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public dispatchEmptyPlatformMessage(Ljava/lang/String;I)V
    .registers 5

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    invoke-virtual {p0}, Lio/flutter/embedding/engine/FlutterJNI;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativeShellHolderId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lio/flutter/embedding/engine/FlutterJNI;->nativeDispatchEmptyPlatformMessage(JLjava/lang/String;I)V

    goto :goto_31

    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tried to send a platform message to Flutter, but FlutterJNI was detached from native C++. Could not send. Channel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Response ID: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FlutterJNI"

    invoke-static {p2, p1}, Le0/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_31
    return-void
.end method

.method public dispatchPlatformMessage(Ljava/lang/String;Ljava/nio/ByteBuffer;II)V
    .registers 13

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    invoke-virtual {p0}, Lio/flutter/embedding/engine/FlutterJNI;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativeShellHolderId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lio/flutter/embedding/engine/FlutterJNI;->nativeDispatchPlatformMessage(JLjava/lang/String;Ljava/nio/ByteBuffer;II)V

    goto :goto_36

    :cond_18
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Tried to send a platform message to Flutter, but FlutterJNI was detached from native C++. Could not send. Channel: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Response ID: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FlutterJNI"

    invoke-static {p2, p1}, Le0/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_36
    return-void
.end method

.method public dispatchPointerDataPacket(Ljava/nio/ByteBuffer;I)V
    .registers 5

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureAttachedToNative()V

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativeShellHolderId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lio/flutter/embedding/engine/FlutterJNI;->nativeDispatchPointerDataPacket(JLjava/nio/ByteBuffer;I)V

    return-void
.end method

.method public dispatchSemanticsAction(IILjava/nio/ByteBuffer;I)V
    .registers 13

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureAttachedToNative()V

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativeShellHolderId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v1, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lio/flutter/embedding/engine/FlutterJNI;->nativeDispatchSemanticsAction(JIILjava/nio/ByteBuffer;I)V

    return-void
.end method

.method public dispatchSemanticsAction(ILio/flutter/view/f$g;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lio/flutter/embedding/engine/FlutterJNI;->dispatchSemanticsAction(ILio/flutter/view/f$g;Ljava/lang/Object;)V

    return-void
.end method

.method public dispatchSemanticsAction(ILio/flutter/view/f$g;Ljava/lang/Object;)V
    .registers 5

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureAttachedToNative()V

    if-eqz p3, :cond_10

    sget-object v0, Ls0/p;->a:Ls0/p;

    invoke-virtual {v0, p3}, Ls0/p;->a(Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/nio/Buffer;->position()I

    move-result v0

    goto :goto_12

    :cond_10
    const/4 p3, 0x0

    const/4 v0, 0x0

    :goto_12
    iget p2, p2, Lio/flutter/view/f$g;->e:I

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/flutter/embedding/engine/FlutterJNI;->dispatchSemanticsAction(IILjava/nio/ByteBuffer;I)V

    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 3

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureAttachedToNative()V

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativeShellHolderId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lio/flutter/embedding/engine/FlutterJNI;->nativeGetBitmap(J)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getIsSoftwareRenderingEnabled()Z
    .registers 2

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->nativeGetIsSoftwareRenderingEnabled()Z

    move-result v0

    return v0
.end method

.method public handlePlatformMessage(Ljava/lang/String;Ljava/nio/ByteBuffer;IJ)V
    .registers 12

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->platformMessageHandler:Lf0/f;

    if-eqz v0, :cond_c

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lf0/f;->f(Ljava/lang/String;Ljava/nio/ByteBuffer;IJ)V

    goto :goto_f

    :cond_c
    invoke-direct {p0, p4, p5}, Lio/flutter/embedding/engine/FlutterJNI;->nativeCleanupMessageData(J)V

    :goto_f
    return-void
.end method

.method public init(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 10

    sget-boolean v0, Lio/flutter/embedding/engine/FlutterJNI;->initCalled:Z

    if-eqz v0, :cond_b

    const-string v0, "FlutterJNI"

    const-string v1, "FlutterJNI.init called more than once"

    invoke-static {v0, v1}, Le0/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    invoke-static/range {p1 .. p7}, Lio/flutter/embedding/engine/FlutterJNI;->nativeInit(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    const/4 p1, 0x1

    sput-boolean p1, Lio/flutter/embedding/engine/FlutterJNI;->initCalled:Z

    return-void
.end method

.method public invokePlatformMessageEmptyResponseCallback(I)V
    .registers 5

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->shellHolderLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_9
    invoke-virtual {p0}, Lio/flutter/embedding/engine/FlutterJNI;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativeShellHolderId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lio/flutter/embedding/engine/FlutterJNI;->nativeInvokePlatformMessageEmptyResponseCallback(JI)V

    goto :goto_2f

    :cond_19
    const-string v0, "FlutterJNI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to send a platform message response, but FlutterJNI was detached from native C++. Could not send. Response ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Le0/b;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2f
    .catchall {:try_start_9 .. :try_end_2f} :catchall_39

    :goto_2f
    iget-object p1, p0, Lio/flutter/embedding/engine/FlutterJNI;->shellHolderLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :catchall_39
    move-exception p1

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->shellHolderLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p1
.end method

.method public invokePlatformMessageResponseCallback(ILjava/nio/ByteBuffer;I)V
    .registers 11

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->shellHolderLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_f
    invoke-virtual {p0}, Lio/flutter/embedding/engine/FlutterJNI;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativeShellHolderId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lio/flutter/embedding/engine/FlutterJNI;->nativeInvokePlatformMessageResponseCallback(JILjava/nio/ByteBuffer;I)V

    goto :goto_39

    :cond_23
    const-string p2, "FlutterJNI"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Tried to send a platform message response, but FlutterJNI was detached from native C++. Could not send. Response ID: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Le0/b;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_f .. :try_end_39} :catchall_43

    :goto_39
    iget-object p1, p0, Lio/flutter/embedding/engine/FlutterJNI;->shellHolderLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :catchall_43
    move-exception p1

    iget-object p2, p0, Lio/flutter/embedding/engine/FlutterJNI;->shellHolderLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p1

    :cond_4e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Expected a direct ByteBuffer."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isAttached()Z
    .registers 2

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativeShellHolderId:Ljava/lang/Long;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isCodePointEmoji(I)Z
    .registers 2

    invoke-direct {p0, p1}, Lio/flutter/embedding/engine/FlutterJNI;->nativeFlutterTextUtilsIsEmoji(I)Z

    move-result p1

    return p1
.end method

.method public isCodePointEmojiModifier(I)Z
    .registers 2

    invoke-direct {p0, p1}, Lio/flutter/embedding/engine/FlutterJNI;->nativeFlutterTextUtilsIsEmojiModifier(I)Z

    move-result p1

    return p1
.end method

.method public isCodePointEmojiModifierBase(I)Z
    .registers 2

    invoke-direct {p0, p1}, Lio/flutter/embedding/engine/FlutterJNI;->nativeFlutterTextUtilsIsEmojiModifierBase(I)Z

    move-result p1

    return p1
.end method

.method public isCodePointRegionalIndicator(I)Z
    .registers 2

    invoke-direct {p0, p1}, Lio/flutter/embedding/engine/FlutterJNI;->nativeFlutterTextUtilsIsRegionalIndicator(I)Z

    move-result p1

    return p1
.end method

.method public isCodePointVariantSelector(I)Z
    .registers 2

    invoke-direct {p0, p1}, Lio/flutter/embedding/engine/FlutterJNI;->nativeFlutterTextUtilsIsVariationSelector(I)Z

    move-result p1

    return p1
.end method

.method public loadDartDeferredLibrary(I[Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureAttachedToNative()V

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativeShellHolderId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lio/flutter/embedding/engine/FlutterJNI;->nativeLoadDartDeferredLibrary(JI[Ljava/lang/String;)V

    return-void
.end method

.method public loadLibrary()V
    .registers 3

    sget-boolean v0, Lio/flutter/embedding/engine/FlutterJNI;->loadLibraryCalled:Z

    if-eqz v0, :cond_b

    const-string v0, "FlutterJNI"

    const-string v1, "FlutterJNI.loadLibrary called more than once"

    invoke-static {v0, v1}, Le0/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    const-string v0, "flutter"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lio/flutter/embedding/engine/FlutterJNI;->loadLibraryCalled:Z

    return-void
.end method

.method public markTextureFrameAvailable(J)V
    .registers 5

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureAttachedToNative()V

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativeShellHolderId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lio/flutter/embedding/engine/FlutterJNI;->nativeMarkTextureFrameAvailable(JJ)V

    return-void
.end method

.method public notifyLowMemoryWarning()V
    .registers 3

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureAttachedToNative()V

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativeShellHolderId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lio/flutter/embedding/engine/FlutterJNI;->nativeNotifyLowMemoryWarning(J)V

    return-void
.end method

.method public onBeginFrame()V
    .registers 3

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->platformViewsController:Lio/flutter/plugin/platform/v;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lio/flutter/plugin/platform/v;->h0()V

    return-void

    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "platformViewsController must be set before attempting to begin the frame"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onDisplayOverlaySurface(IIIII)V
    .registers 12

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->platformViewsController:Lio/flutter/plugin/platform/v;

    if-eqz v0, :cond_10

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lio/flutter/plugin/platform/v;->j0(IIIII)V

    return-void

    :cond_10
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "platformViewsController must be set before attempting to position an overlay surface"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onDisplayPlatformView(IIIIIIILio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack;)V
    .registers 19

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    move-object v0, p0

    iget-object v1, v0, Lio/flutter/embedding/engine/FlutterJNI;->platformViewsController:Lio/flutter/plugin/platform/v;

    if-eqz v1, :cond_17

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lio/flutter/plugin/platform/v;->k0(IIIIIIILio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack;)V

    return-void

    :cond_17
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "platformViewsController must be set before attempting to position a platform view"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onEndFrame()V
    .registers 3

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->platformViewsController:Lio/flutter/plugin/platform/v;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lio/flutter/plugin/platform/v;->l0()V

    return-void

    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "platformViewsController must be set before attempting to end the frame"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onFirstFrame()V
    .registers 3

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->flutterUiDisplayListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq0/b;

    invoke-interface {v1}, Lq0/b;->i()V

    goto :goto_9

    :cond_19
    return-void
.end method

.method onRenderingStopped()V
    .registers 3

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->flutterUiDisplayListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq0/b;

    invoke-interface {v1}, Lq0/b;->d()V

    goto :goto_9

    :cond_19
    return-void
.end method

.method public onSurfaceChanged(II)V
    .registers 5

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureAttachedToNative()V

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativeShellHolderId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lio/flutter/embedding/engine/FlutterJNI;->nativeSurfaceChanged(JII)V

    return-void
.end method

.method public onSurfaceCreated(Landroid/view/Surface;)V
    .registers 4

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureAttachedToNative()V

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativeShellHolderId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lio/flutter/embedding/engine/FlutterJNI;->nativeSurfaceCreated(JLandroid/view/Surface;)V

    return-void
.end method

.method public onSurfaceDestroyed()V
    .registers 3

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureAttachedToNative()V

    invoke-virtual {p0}, Lio/flutter/embedding/engine/FlutterJNI;->onRenderingStopped()V

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativeShellHolderId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lio/flutter/embedding/engine/FlutterJNI;->nativeSurfaceDestroyed(J)V

    return-void
.end method

.method public onSurfaceWindowChanged(Landroid/view/Surface;)V
    .registers 4

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureAttachedToNative()V

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativeShellHolderId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lio/flutter/embedding/engine/FlutterJNI;->nativeSurfaceWindowChanged(JLandroid/view/Surface;)V

    return-void
.end method

.method public onVsync(JJJ)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lio/flutter/embedding/engine/FlutterJNI;->nativeOnVsync(JJJ)V

    return-void
.end method

.method public performNativeAttach(Lio/flutter/embedding/engine/FlutterJNI;)J
    .registers 4

    invoke-direct {p0, p1}, Lio/flutter/embedding/engine/FlutterJNI;->nativeAttach(Lio/flutter/embedding/engine/FlutterJNI;)J

    move-result-wide v0

    return-wide v0
.end method

.method public prefetchDefaultFontManager()V
    .registers 3

    sget-boolean v0, Lio/flutter/embedding/engine/FlutterJNI;->prefetchDefaultFontManagerCalled:Z

    if-eqz v0, :cond_b

    const-string v0, "FlutterJNI"

    const-string v1, "FlutterJNI.prefetchDefaultFontManager called more than once"

    invoke-static {v0, v1}, Le0/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    invoke-static {}, Lio/flutter/embedding/engine/FlutterJNI;->nativePrefetchDefaultFontManager()V

    const/4 v0, 0x1

    sput-boolean v0, Lio/flutter/embedding/engine/FlutterJNI;->prefetchDefaultFontManagerCalled:Z

    return-void
.end method

.method public registerTexture(JLio/flutter/embedding/engine/renderer/SurfaceTextureWrapper;)V
    .registers 11

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureAttachedToNative()V

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativeShellHolderId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v1 .. v6}, Lio/flutter/embedding/engine/FlutterJNI;->nativeRegisterTexture(JJLjava/lang/ref/WeakReference;)V

    return-void
.end method

.method public removeEngineLifecycleListener(Lio/flutter/embedding/engine/a$b;)V
    .registers 3

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->engineLifecycleListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeIsDisplayingFlutterUiListener(Lq0/b;)V
    .registers 3

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->flutterUiDisplayListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public requestDartDeferredLibrary(I)V
    .registers 4

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->deferredComponentManager:Lg0/a;

    if-eqz v0, :cond_9

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lg0/a;->d(ILjava/lang/String;)V

    goto :goto_10

    :cond_9
    const-string p1, "FlutterJNI"

    const-string v0, "No DeferredComponentManager found. Android setup must be completed before using split AOT deferred components."

    invoke-static {p1, v0}, Le0/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_10
    return-void
.end method

.method public runBundleAndSnapshotFromLibrary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/AssetManager;Ljava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/res/AssetManager;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureAttachedToNative()V

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativeShellHolderId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lio/flutter/embedding/engine/FlutterJNI;->nativeRunBundleAndSnapshotFromLibrary(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/AssetManager;Ljava/util/List;)V

    return-void
.end method

.method public setAccessibilityDelegate(Lio/flutter/embedding/engine/FlutterJNI$a;)V
    .registers 2

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    iput-object p1, p0, Lio/flutter/embedding/engine/FlutterJNI;->accessibilityDelegate:Lio/flutter/embedding/engine/FlutterJNI$a;

    return-void
.end method

.method public setAccessibilityFeatures(I)V
    .registers 4

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureAttachedToNative()V

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativeShellHolderId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lio/flutter/embedding/engine/FlutterJNI;->nativeSetAccessibilityFeatures(JI)V

    return-void
.end method

.method public setAsyncWaitForVsyncDelegate(Lio/flutter/embedding/engine/FlutterJNI$b;)V
    .registers 2

    sput-object p1, Lio/flutter/embedding/engine/FlutterJNI;->asyncWaitForVsyncDelegate:Lio/flutter/embedding/engine/FlutterJNI$b;

    return-void
.end method

.method public setDeferredComponentManager(Lg0/a;)V
    .registers 2

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    iput-object p1, p0, Lio/flutter/embedding/engine/FlutterJNI;->deferredComponentManager:Lg0/a;

    if-eqz p1, :cond_a

    invoke-interface {p1, p0}, Lg0/a;->c(Lio/flutter/embedding/engine/FlutterJNI;)V

    :cond_a
    return-void
.end method

.method public setLocalizationPlugin(Lt0/b;)V
    .registers 2

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    iput-object p1, p0, Lio/flutter/embedding/engine/FlutterJNI;->localizationPlugin:Lt0/b;

    return-void
.end method

.method public setPlatformMessageHandler(Lf0/f;)V
    .registers 2

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    iput-object p1, p0, Lio/flutter/embedding/engine/FlutterJNI;->platformMessageHandler:Lf0/f;

    return-void
.end method

.method public setPlatformViewsController(Lio/flutter/plugin/platform/v;)V
    .registers 2

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    iput-object p1, p0, Lio/flutter/embedding/engine/FlutterJNI;->platformViewsController:Lio/flutter/plugin/platform/v;

    return-void
.end method

.method public setRefreshRateFPS(F)V
    .registers 2

    sput p1, Lio/flutter/embedding/engine/FlutterJNI;->refreshRateFPS:F

    invoke-virtual {p0}, Lio/flutter/embedding/engine/FlutterJNI;->updateRefreshRate()V

    return-void
.end method

.method public setSemanticsEnabled(Z)V
    .registers 4

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureAttachedToNative()V

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativeShellHolderId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lio/flutter/embedding/engine/FlutterJNI;->nativeSetSemanticsEnabled(JZ)V

    return-void
.end method

.method public setViewportMetrics(FIIIIIIIIIIIIIII[I[I[I)V
    .registers 44

    move-object/from16 v0, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    move/from16 v15, p13

    move/from16 v16, p14

    move/from16 v17, p15

    move/from16 v18, p16

    move-object/from16 v19, p17

    move-object/from16 v20, p18

    move-object/from16 v21, p19

    invoke-direct/range {p0 .. p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    invoke-direct/range {p0 .. p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureAttachedToNative()V

    move-object/from16 v1, p0

    iget-object v2, v1, Lio/flutter/embedding/engine/FlutterJNI;->nativeShellHolderId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-wide/from16 v1, v22

    invoke-direct/range {v0 .. v21}, Lio/flutter/embedding/engine/FlutterJNI;->nativeSetViewportMetrics(JFIIIIIIIIIIIIIII[I[I[I)V

    return-void
.end method

.method public spawn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lio/flutter/embedding/engine/FlutterJNI;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/flutter/embedding/engine/FlutterJNI;"
        }
    .end annotation

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureAttachedToNative()V

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativeShellHolderId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lio/flutter/embedding/engine/FlutterJNI;->nativeSpawn(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object p1

    iget-object p2, p1, Lio/flutter/embedding/engine/FlutterJNI;->nativeShellHolderId:Ljava/lang/Long;

    if-eqz p2, :cond_25

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    const-wide/16 v0, 0x0

    cmp-long p4, p2, v0

    if-eqz p4, :cond_25

    const/4 p2, 0x1

    goto :goto_26

    :cond_25
    const/4 p2, 0x0

    :goto_26
    const-string p3, "Failed to spawn new JNI connected shell from existing shell."

    invoke-static {p2, p3}, Lz0/d;->a(ZLjava/lang/Object;)V

    return-object p1
.end method

.method public unregisterTexture(J)V
    .registers 5

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureAttachedToNative()V

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativeShellHolderId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lio/flutter/embedding/engine/FlutterJNI;->nativeUnregisterTexture(JJ)V

    return-void
.end method

.method public updateDisplayMetrics(IFFF)V
    .registers 5

    sput p2, Lio/flutter/embedding/engine/FlutterJNI;->displayWidth:F

    sput p3, Lio/flutter/embedding/engine/FlutterJNI;->displayHeight:F

    sput p4, Lio/flutter/embedding/engine/FlutterJNI;->displayDensity:F

    sget-boolean p1, Lio/flutter/embedding/engine/FlutterJNI;->loadLibraryCalled:Z

    if-nez p1, :cond_b

    return-void

    :cond_b
    iget-object p1, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativeShellHolderId:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lio/flutter/embedding/engine/FlutterJNI;->nativeUpdateDisplayMetrics(J)V

    return-void
.end method

.method public updateJavaAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureRunningOnMainThread()V

    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterJNI;->ensureAttachedToNative()V

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterJNI;->nativeShellHolderId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lio/flutter/embedding/engine/FlutterJNI;->nativeUpdateJavaAssetManager(JLandroid/content/res/AssetManager;Ljava/lang/String;)V

    return-void
.end method

.method public updateRefreshRate()V
    .registers 2

    sget-boolean v0, Lio/flutter/embedding/engine/FlutterJNI;->loadLibraryCalled:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    sget v0, Lio/flutter/embedding/engine/FlutterJNI;->refreshRateFPS:F

    invoke-direct {p0, v0}, Lio/flutter/embedding/engine/FlutterJNI;->nativeUpdateRefreshRate(F)V

    return-void
.end method
