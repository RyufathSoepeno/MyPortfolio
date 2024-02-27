.class Landroidx/appcompat/widget/n1$b;
.super Landroidx/core/view/k1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/n1;->r(IJ)Landroidx/core/view/i1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:Z

.field final synthetic b:I

.field final synthetic c:Landroidx/appcompat/widget/n1;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/n1;I)V
    .registers 3

    iput-object p1, p0, Landroidx/appcompat/widget/n1$b;->c:Landroidx/appcompat/widget/n1;

    iput p2, p0, Landroidx/appcompat/widget/n1$b;->b:I

    invoke-direct {p0}, Landroidx/core/view/k1;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/appcompat/widget/n1$b;->a:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/widget/n1$b;->a:Z

    return-void
.end method

.method public b(Landroid/view/View;)V
    .registers 3

    iget-boolean p1, p0, Landroidx/appcompat/widget/n1$b;->a:Z

    if-nez p1, :cond_d

    iget-object p1, p0, Landroidx/appcompat/widget/n1$b;->c:Landroidx/appcompat/widget/n1;

    iget-object p1, p1, Landroidx/appcompat/widget/n1;->a:Landroidx/appcompat/widget/Toolbar;

    iget v0, p0, Landroidx/appcompat/widget/n1$b;->b:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    return-void
.end method

.method public c(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Landroidx/appcompat/widget/n1$b;->c:Landroidx/appcompat/widget/n1;

    iget-object p1, p1, Landroidx/appcompat/widget/n1;->a:Landroidx/appcompat/widget/Toolbar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
