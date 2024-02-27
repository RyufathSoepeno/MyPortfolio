.class Landroidx/appcompat/widget/w$a;
.super Landroidx/appcompat/widget/r0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/w;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic n:Landroidx/appcompat/widget/w$e;

.field final synthetic o:Landroidx/appcompat/widget/w;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/w;Landroid/view/View;Landroidx/appcompat/widget/w$e;)V
    .registers 4

    iput-object p1, p0, Landroidx/appcompat/widget/w$a;->o:Landroidx/appcompat/widget/w;

    iput-object p3, p0, Landroidx/appcompat/widget/w$a;->n:Landroidx/appcompat/widget/w$e;

    invoke-direct {p0, p2}, Landroidx/appcompat/widget/r0;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public b()Li/e;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/w$a;->n:Landroidx/appcompat/widget/w$e;

    return-object v0
.end method

.method public c()Z
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/w$a;->o:Landroidx/appcompat/widget/w;

    invoke-virtual {v0}, Landroidx/appcompat/widget/w;->getInternalPopup()Landroidx/appcompat/widget/w$g;

    move-result-object v0

    invoke-interface {v0}, Landroidx/appcompat/widget/w$g;->c()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Landroidx/appcompat/widget/w$a;->o:Landroidx/appcompat/widget/w;

    invoke-virtual {v0}, Landroidx/appcompat/widget/w;->b()V

    :cond_11
    const/4 v0, 0x1

    return v0
.end method
