.class public Landroidx/appcompat/widget/j1;
.super Landroid/content/ContextWrapper;
.source "SourceFile"


# static fields
.field private static final c:Ljava/lang/Object;

.field private static d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/appcompat/widget/j1;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/content/res/Resources;

.field private final b:Landroid/content/res/Resources$Theme;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/appcompat/widget/j1;->c:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroidx/appcompat/widget/s1;->b()Z

    move-result v0

    if-eqz v0, :cond_22

    new-instance v0, Landroidx/appcompat/widget/s1;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/widget/s1;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroidx/appcompat/widget/j1;->a:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/j1;->b:Landroid/content/res/Resources$Theme;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    goto :goto_30

    :cond_22
    new-instance v0, Landroidx/appcompat/widget/l1;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/widget/l1;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroidx/appcompat/widget/j1;->a:Landroid/content/res/Resources;

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/appcompat/widget/j1;->b:Landroid/content/res/Resources$Theme;

    :goto_30
    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .registers 3

    instance-of v0, p0, Landroidx/appcompat/widget/j1;

    const/4 v1, 0x0

    if-nez v0, :cond_1d

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    instance-of v0, v0, Landroidx/appcompat/widget/l1;

    if-nez v0, :cond_1d

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    instance-of p0, p0, Landroidx/appcompat/widget/s1;

    if-eqz p0, :cond_16

    goto :goto_1d

    :cond_16
    invoke-static {}, Landroidx/appcompat/widget/s1;->b()Z

    move-result p0

    if-eqz p0, :cond_1d

    const/4 v1, 0x1

    :cond_1d
    :goto_1d
    return v1
.end method

.method public static b(Landroid/content/Context;)Landroid/content/Context;
    .registers 5

    invoke-static {p0}, Landroidx/appcompat/widget/j1;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_72

    sget-object v0, Landroidx/appcompat/widget/j1;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_9
    sget-object v1, Landroidx/appcompat/widget/j1;->d:Ljava/util/ArrayList;

    if-nez v1, :cond_15

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Landroidx/appcompat/widget/j1;->d:Ljava/util/ArrayList;

    goto :goto_5e

    :cond_15
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1b
    if-ltz v1, :cond_35

    sget-object v2, Landroidx/appcompat/widget/j1;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_2d

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_32

    :cond_2d
    sget-object v2, Landroidx/appcompat/widget/j1;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_32
    add-int/lit8 v1, v1, -0x1

    goto :goto_1b

    :cond_35
    sget-object v1, Landroidx/appcompat/widget/j1;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_3d
    if-ltz v1, :cond_5e

    sget-object v2, Landroidx/appcompat/widget/j1;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_50

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/j1;

    goto :goto_51

    :cond_50
    const/4 v2, 0x0

    :goto_51
    if-eqz v2, :cond_5b

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    if-ne v3, p0, :cond_5b

    monitor-exit v0

    return-object v2

    :cond_5b
    add-int/lit8 v1, v1, -0x1

    goto :goto_3d

    :cond_5e
    :goto_5e
    new-instance v1, Landroidx/appcompat/widget/j1;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/j1;-><init>(Landroid/content/Context;)V

    sget-object p0, Landroidx/appcompat/widget/j1;->d:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-object v1

    :catchall_6f
    move-exception p0

    monitor-exit v0
    :try_end_71
    .catchall {:try_start_9 .. :try_end_71} :catchall_6f

    throw p0

    :cond_72
    return-object p0
.end method


# virtual methods
.method public getAssets()Landroid/content/res/AssetManager;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/j1;->a:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/j1;->a:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/j1;->b:Landroid/content/res/Resources$Theme;

    if-nez v0, :cond_8

    invoke-super {p0}, Landroid/content/ContextWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public setTheme(I)V
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/widget/j1;->b:Landroid/content/res/Resources$Theme;

    if-nez v0, :cond_8

    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->setTheme(I)V

    goto :goto_c

    :cond_8
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :goto_c
    return-void
.end method
