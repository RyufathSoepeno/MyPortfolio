.class public Lw0/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj0/a;
.implements Lw0/a$b;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private h()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lw0/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lz0/c;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private j()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lw0/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lz0/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private k()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lw0/i;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDirs()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_1d

    aget-object v4, v1, v3

    if-eqz v4, :cond_1a

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_1d
    return-object v0
.end method

.method private l(Lw0/a$c;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw0/a$c;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lw0/i;->a:Landroid/content/Context;

    invoke-direct {p0, p1}, Lw0/i;->o(Lw0/a$c;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_21

    aget-object v3, p1, v2

    if-eqz v3, :cond_1e

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_21
    return-object v0
.end method

.method private m()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lw0/i;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_a

    return-object v1

    :cond_a
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private n()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lw0/i;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private o(Lw0/a$c;)Ljava/lang/String;
    .registers 5

    sget-object v0, Lw0/i$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_42

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_22
    const-string p1, "documents"

    return-object p1

    :pswitch_25
    const-string p1, "dcim"

    return-object p1

    :pswitch_28
    const-string p1, "downloads"

    return-object p1

    :pswitch_2b
    const-string p1, "movies"

    return-object p1

    :pswitch_2e
    const-string p1, "pictures"

    return-object p1

    :pswitch_31
    const-string p1, "notifications"

    return-object p1

    :pswitch_34
    const-string p1, "alarms"

    return-object p1

    :pswitch_37
    const-string p1, "ringtones"

    return-object p1

    :pswitch_3a
    const-string p1, "podcasts"

    return-object p1

    :pswitch_3d
    const-string p1, "music"

    return-object p1

    :pswitch_40
    const/4 p1, 0x0

    return-object p1

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
        :pswitch_37
        :pswitch_34
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
    .end packed-switch
.end method

.method private p(Ls0/c;Landroid/content/Context;)V
    .registers 5

    :try_start_0
    invoke-static {p1, p0}, Lw0/h;->h(Ls0/c;Lw0/a$b;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_c

    :catch_4
    move-exception p1

    const-string v0, "PathProviderPlugin"

    const-string v1, "Received exception while setting up PathProviderPlugin"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_c
    iput-object p2, p0, Lw0/i;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lw0/a$c;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw0/a$c;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lw0/i;->l(Lw0/a$c;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public b()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lw0/i;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lw0/i;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lw0/i;->k()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lw0/i;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f(Lj0/a$b;)V
    .registers 3

    invoke-virtual {p1}, Lj0/a$b;->b()Ls0/c;

    move-result-object v0

    invoke-virtual {p1}, Lj0/a$b;->a()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lw0/i;->p(Ls0/c;Landroid/content/Context;)V

    return-void
.end method

.method public g()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lw0/i;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i(Lj0/a$b;)V
    .registers 3

    invoke-virtual {p1}, Lj0/a$b;->b()Ls0/c;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lw0/h;->h(Ls0/c;Lw0/a$b;)V

    return-void
.end method
