.class public final synthetic Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    throw v0
.end method

.method public synthetic constructor <init>(Ljava/security/Signature;)V
    .registers 2
    .param p1    # Ljava/security/Signature;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljavax/crypto/Cipher;)V
    .registers 2
    .param p1    # Ljavax/crypto/Cipher;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljavax/crypto/Mac;)V
    .registers 2
    .param p1    # Ljavax/crypto/Mac;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native synthetic getCipher()Ljavax/crypto/Cipher;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public native synthetic getMac()Ljavax/crypto/Mac;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public native synthetic getSignature()Ljava/security/Signature;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
