.class Landroidx/appcompat/widget/e0$a;
.super Landroidx/core/content/res/h$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/e0;->B(Landroid/content/Context;Landroidx/appcompat/widget/m1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Ljava/lang/ref/WeakReference;

.field final synthetic d:Landroidx/appcompat/widget/e0;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/e0;IILjava/lang/ref/WeakReference;)V
    .registers 5

    iput-object p1, p0, Landroidx/appcompat/widget/e0$a;->d:Landroidx/appcompat/widget/e0;

    iput p2, p0, Landroidx/appcompat/widget/e0$a;->a:I

    iput p3, p0, Landroidx/appcompat/widget/e0$a;->b:I

    iput-object p4, p0, Landroidx/appcompat/widget/e0$a;->c:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Landroidx/core/content/res/h$e;-><init>()V

    return-void
.end method


# virtual methods
.method public h(I)V
    .registers 2

    return-void
.end method

.method public i(Landroid/graphics/Typeface;)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_18

    iget v0, p0, Landroidx/appcompat/widget/e0$a;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_18

    iget v1, p0, Landroidx/appcompat/widget/e0$a;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/d0;->a(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    :cond_18
    iget-object v0, p0, Landroidx/appcompat/widget/e0$a;->d:Landroidx/appcompat/widget/e0;

    iget-object v1, p0, Landroidx/appcompat/widget/e0$a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/widget/e0;->n(Ljava/lang/ref/WeakReference;Landroid/graphics/Typeface;)V

    return-void
.end method
