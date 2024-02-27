.class Landroidx/fragment/app/q$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/q;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Landroidx/fragment/app/e0;

.field final synthetic f:Landroidx/fragment/app/q;


# direct methods
.method constructor <init>(Landroidx/fragment/app/q;Landroidx/fragment/app/e0;)V
    .registers 3

    iput-object p1, p0, Landroidx/fragment/app/q$a;->f:Landroidx/fragment/app/q;

    iput-object p2, p0, Landroidx/fragment/app/q$a;->e:Landroidx/fragment/app/e0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Landroidx/fragment/app/q$a;->e:Landroidx/fragment/app/e0;

    invoke-virtual {p1}, Landroidx/fragment/app/e0;->k()Landroidx/fragment/app/Fragment;

    move-result-object p1

    iget-object v0, p0, Landroidx/fragment/app/q$a;->e:Landroidx/fragment/app/e0;

    invoke-virtual {v0}, Landroidx/fragment/app/e0;->m()V

    iget-object p1, p1, Landroidx/fragment/app/Fragment;->M:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Landroidx/fragment/app/q$a;->f:Landroidx/fragment/app/q;

    iget-object v0, v0, Landroidx/fragment/app/q;->e:Landroidx/fragment/app/x;

    invoke-static {p1, v0}, Landroidx/fragment/app/m0;->n(Landroid/view/ViewGroup;Landroidx/fragment/app/x;)Landroidx/fragment/app/m0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/m0;->j()V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2

    return-void
.end method
