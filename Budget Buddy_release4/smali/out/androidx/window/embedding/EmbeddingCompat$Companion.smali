.class public final Landroidx/window/embedding/EmbeddingCompat$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/embedding/EmbeddingCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/g;)V
    .registers 2

    invoke-direct {p0}, Landroidx/window/embedding/EmbeddingCompat$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final embeddingComponent()Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;
    .registers 2

    invoke-virtual {p0}, Landroidx/window/embedding/EmbeddingCompat$Companion;->isEmbeddingAvailable()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {}, Landroidx/window/extensions/WindowExtensionsProvider;->getWindowExtensions()Landroidx/window/extensions/WindowExtensions;

    move-result-object v0

    invoke-interface {v0}, Landroidx/window/extensions/WindowExtensions;->getActivityEmbeddingComponent()Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;

    move-result-object v0

    if-nez v0, :cond_1d

    new-instance v0, Landroidx/window/embedding/EmptyEmbeddingComponent;

    invoke-direct {v0}, Landroidx/window/embedding/EmptyEmbeddingComponent;-><init>()V

    goto :goto_1b

    :cond_16
    new-instance v0, Landroidx/window/embedding/EmptyEmbeddingComponent;

    invoke-direct {v0}, Landroidx/window/embedding/EmptyEmbeddingComponent;-><init>()V

    :goto_1b
    check-cast v0, Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;

    :cond_1d
    return-object v0
.end method

.method public final getExtensionApiLevel()Ljava/lang/Integer;
    .registers 4

    const-string v0, "EmbeddingCompat"

    const/4 v1, 0x0

    :try_start_3
    invoke-static {}, Landroidx/window/extensions/WindowExtensionsProvider;->getWindowExtensions()Landroidx/window/extensions/WindowExtensions;

    move-result-object v2

    invoke-interface {v2}, Landroidx/window/extensions/WindowExtensions;->getVendorApiLevel()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_f
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_3 .. :try_end_f} :catch_13
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_f} :catch_10

    goto :goto_18

    :catch_10
    const-string v2, "Stub Extension"

    goto :goto_15

    :catch_13
    const-string v2, "Embedding extension version not found"

    :goto_15
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_18
    return-object v1
.end method

.method public final isEmbeddingAvailable()Z
    .registers 4

    const-string v0, "EmbeddingCompat"

    const/4 v1, 0x0

    :try_start_3
    invoke-static {}, Landroidx/window/extensions/WindowExtensionsProvider;->getWindowExtensions()Landroidx/window/extensions/WindowExtensions;

    move-result-object v2

    invoke-interface {v2}, Landroidx/window/extensions/WindowExtensions;->getActivityEmbeddingComponent()Landroidx/window/extensions/embedding/ActivityEmbeddingComponent;

    move-result-object v0
    :try_end_b
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_3 .. :try_end_b} :catch_13
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_b} :catch_10

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_18

    :catch_10
    const-string v2, "Stub Extension"

    goto :goto_15

    :catch_13
    const-string v2, "Embedding extension version not found"

    :goto_15
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    :goto_18
    return v1
.end method
