.class public synthetic Landroid/hardware/fingerprint/FingerprintManager;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    throw v0
.end method


# virtual methods
.method public native synthetic authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;)V
    .param p1    # Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;
        .annotation build Landroid/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/CancellationSignal;
        .annotation build Landroid/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/os/Handler;
        .annotation build Landroid/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public native synthetic hasEnrolledFingerprints()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public native synthetic isHardwareDetected()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
