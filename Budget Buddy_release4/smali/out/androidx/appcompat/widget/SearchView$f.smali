.class Landroidx/appcompat/widget/SearchView$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Landroidx/appcompat/widget/SearchView;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/SearchView;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/widget/SearchView$f;->e:Landroidx/appcompat/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$f;->e:Landroidx/appcompat/widget/SearchView;

    iget-object v1, v0, Landroidx/appcompat/widget/SearchView;->x:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_a

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView;->R()V

    goto :goto_29

    :cond_a
    iget-object v1, v0, Landroidx/appcompat/widget/SearchView;->z:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_12

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView;->N()V

    goto :goto_29

    :cond_12
    iget-object v1, v0, Landroidx/appcompat/widget/SearchView;->y:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_1a

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView;->S()V

    goto :goto_29

    :cond_1a
    iget-object v1, v0, Landroidx/appcompat/widget/SearchView;->A:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_22

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView;->W()V

    goto :goto_29

    :cond_22
    iget-object v1, v0, Landroidx/appcompat/widget/SearchView;->t:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    if-ne p1, v1, :cond_29

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView;->D()V

    :cond_29
    :goto_29
    return-void
.end method
