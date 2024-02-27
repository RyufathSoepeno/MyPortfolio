.class public final synthetic Landroid/security/keystore/KeyGenParameterSpec$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    throw v0
.end method

.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native synthetic build()Landroid/security/keystore/KeyGenParameterSpec;
    .annotation build Landroid/annotation/NonNull;
    .end annotation
.end method

.method public varargs native synthetic setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .annotation build Landroid/annotation/NonNull;
    .end annotation
.end method

.method public varargs native synthetic setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .annotation build Landroid/annotation/NonNull;
    .end annotation
.end method
