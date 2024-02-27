.class Ld/f$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/f;->G0(Lh/b$a;)Lh/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Ld/f;


# direct methods
.method constructor <init>(Ld/f;)V
    .registers 2

    iput-object p1, p0, Ld/f$d;->e:Ld/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Ld/f$d;->e:Ld/f;

    iget-object v1, v0, Ld/f;->u:Landroid/widget/PopupWindow;

    iget-object v0, v0, Ld/f;->t:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v2, 0x37

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-object v0, p0, Ld/f$d;->e:Ld/f;

    invoke-virtual {v0}, Ld/f;->V()V

    iget-object v0, p0, Ld/f$d;->e:Ld/f;

    invoke-virtual {v0}, Ld/f;->D0()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_3e

    iget-object v0, p0, Ld/f$d;->e:Ld/f;

    iget-object v0, v0, Ld/f;->t:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Ld/f$d;->e:Ld/f;

    iget-object v2, v0, Ld/f;->t:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {v2}, Landroidx/core/view/h0;->b(Landroid/view/View;)Landroidx/core/view/i1;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/core/view/i1;->b(F)Landroidx/core/view/i1;

    move-result-object v1

    iput-object v1, v0, Ld/f;->w:Landroidx/core/view/i1;

    iget-object v0, p0, Ld/f$d;->e:Ld/f;

    iget-object v0, v0, Ld/f;->w:Landroidx/core/view/i1;

    new-instance v1, Ld/f$d$a;

    invoke-direct {v1, p0}, Ld/f$d$a;-><init>(Ld/f$d;)V

    invoke-virtual {v0, v1}, Landroidx/core/view/i1;->h(Landroidx/core/view/j1;)Landroidx/core/view/i1;

    goto :goto_4c

    :cond_3e
    iget-object v0, p0, Ld/f$d;->e:Ld/f;

    iget-object v0, v0, Ld/f;->t:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Ld/f$d;->e:Ld/f;

    iget-object v0, v0, Ld/f;->t:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    :goto_4c
    return-void
.end method
