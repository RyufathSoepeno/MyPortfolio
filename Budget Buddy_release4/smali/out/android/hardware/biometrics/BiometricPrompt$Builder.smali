.class public synthetic Landroid/hardware/biometrics/BiometricPrompt$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    throw v0
.end method

.method public synthetic constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native synthetic build()Landroid/hardware/biometrics/BiometricPrompt;
    .annotation build Landroid/annotation/NonNull;
    .end annotation
.end method

.method public native synthetic setDescription(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/NonNull;
    .end annotation
.end method

.method public native synthetic setNegativeButton(Ljava/lang/CharSequence;Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/DialogInterface$OnClickListener;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/NonNull;
    .end annotation
.end method

.method public native synthetic setSubtitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/NonNull;
    .end annotation
.end method

.method public native synthetic setTitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/NonNull;
    .end annotation
.end method
