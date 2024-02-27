.class public synthetic Landroid/hardware/biometrics/BiometricPrompt;
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
.method public native synthetic authenticate(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V
    .param p1    # Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/CancellationSignal;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/concurrent/Executor;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public native synthetic authenticate(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V
    .param p1    # Landroid/os/CancellationSignal;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
.end method
