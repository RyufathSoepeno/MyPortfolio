.class Landroidx/appcompat/widget/f1$b;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/f1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic e:Landroidx/appcompat/widget/f1;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/f1;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/widget/f1$b;->e:Landroidx/appcompat/widget/f1;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/f1$b;->e:Landroidx/appcompat/widget/f1;

    iget-object v0, v0, Landroidx/appcompat/widget/f1;->g:Landroidx/appcompat/widget/s0;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/f1$b;->e:Landroidx/appcompat/widget/f1;

    iget-object v0, v0, Landroidx/appcompat/widget/f1;->g:Landroidx/appcompat/widget/s0;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/f1$d;

    invoke-virtual {p1}, Landroidx/appcompat/widget/f1$d;->b()Ld/a$c;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    if-nez p2, :cond_10

    iget-object p2, p0, Landroidx/appcompat/widget/f1$b;->e:Landroidx/appcompat/widget/f1;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/f1$b;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ld/a$c;

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Landroidx/appcompat/widget/f1;->c(Ld/a$c;Z)Landroidx/appcompat/widget/f1$d;

    move-result-object p2

    goto :goto_1c

    :cond_10
    move-object p3, p2

    check-cast p3, Landroidx/appcompat/widget/f1$d;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/f1$b;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ld/a$c;

    invoke-virtual {p3, p1}, Landroidx/appcompat/widget/f1$d;->a(Ld/a$c;)V

    :goto_1c
    return-object p2
.end method
