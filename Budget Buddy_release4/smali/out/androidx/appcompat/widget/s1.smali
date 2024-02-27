.class public Landroidx/appcompat/widget/s1;
.super Landroid/content/res/Resources;
.source "SourceFile"


# static fields
.field private static b:Z = false


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .registers 5

    invoke-virtual {p2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    invoke-direct {p0, v0, v1, p2}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Landroidx/appcompat/widget/s1;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static a()Z
    .registers 1

    sget-boolean v0, Landroidx/appcompat/widget/s1;->b:Z

    return v0
.end method

.method public static b()Z
    .registers 1

    invoke-static {}, Landroidx/appcompat/widget/s1;->a()Z

    move-result v0

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method final c(I)Landroid/graphics/drawable/Drawable;
    .registers 2

    invoke-super {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/widget/s1;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_13

    invoke-static {}, Landroidx/appcompat/widget/c1;->h()Landroidx/appcompat/widget/c1;

    move-result-object v1

    invoke-virtual {v1, v0, p0, p1}, Landroidx/appcompat/widget/c1;->t(Landroid/content/Context;Landroidx/appcompat/widget/s1;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_13
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method
