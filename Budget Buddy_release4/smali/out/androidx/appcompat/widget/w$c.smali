.class Landroidx/appcompat/widget/w$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/w$g;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field e:Landroidx/appcompat/app/a;

.field private f:Landroid/widget/ListAdapter;

.field private g:Ljava/lang/CharSequence;

.field final synthetic h:Landroidx/appcompat/widget/w;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/w;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/widget/w$c;->h:Landroidx/appcompat/widget/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Z
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/w$c;->e:Landroidx/appcompat/app/a;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public d()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public dismiss()V
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/w$c;->e:Landroidx/appcompat/app/a;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ld/i;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/widget/w$c;->e:Landroidx/appcompat/app/a;

    :cond_a
    return-void
.end method

.method public f()Landroid/graphics/drawable/Drawable;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public h(Ljava/lang/CharSequence;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/widget/w$c;->g:Ljava/lang/CharSequence;

    return-void
.end method

.method public i(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    const-string p1, "AppCompatSpinner"

    const-string v0, "Cannot set popup background for MODE_DIALOG, ignoring"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public j(I)V
    .registers 3

    const-string p1, "AppCompatSpinner"

    const-string v0, "Cannot set vertical offset for MODE_DIALOG, ignoring"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public k(I)V
    .registers 3

    const-string p1, "AppCompatSpinner"

    const-string v0, "Cannot set horizontal (original) offset for MODE_DIALOG, ignoring"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public l(I)V
    .registers 3

    const-string p1, "AppCompatSpinner"

    const-string v0, "Cannot set horizontal offset for MODE_DIALOG, ignoring"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public m(II)V
    .registers 6

    iget-object v0, p0, Landroidx/appcompat/widget/w$c;->f:Landroid/widget/ListAdapter;

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Landroidx/appcompat/app/a$a;

    iget-object v1, p0, Landroidx/appcompat/widget/w$c;->h:Landroidx/appcompat/widget/w;

    invoke-virtual {v1}, Landroidx/appcompat/widget/w;->getPopupContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/a$a;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Landroidx/appcompat/widget/w$c;->g:Ljava/lang/CharSequence;

    if-eqz v1, :cond_17

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a$a;->i(Ljava/lang/CharSequence;)Landroidx/appcompat/app/a$a;

    :cond_17
    iget-object v1, p0, Landroidx/appcompat/widget/w$c;->f:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroidx/appcompat/widget/w$c;->h:Landroidx/appcompat/widget/w;

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2, p0}, Landroidx/appcompat/app/a$a;->h(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/a$a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/a$a;->a()Landroidx/appcompat/app/a;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/w$c;->e:Landroidx/appcompat/app/a;

    invoke-virtual {v0}, Landroidx/appcompat/app/a;->e()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTextDirection(I)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setTextAlignment(I)V

    iget-object p1, p0, Landroidx/appcompat/widget/w$c;->e:Landroidx/appcompat/app/a;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public n()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public o()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/w$c;->g:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    iget-object p1, p0, Landroidx/appcompat/widget/w$c;->h:Landroidx/appcompat/widget/w;

    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setSelection(I)V

    iget-object p1, p0, Landroidx/appcompat/widget/w$c;->h:Landroidx/appcompat/widget/w;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_19

    iget-object p1, p0, Landroidx/appcompat/widget/w$c;->h:Landroidx/appcompat/widget/w;

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/appcompat/widget/w$c;->f:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v1

    invoke-virtual {p1, v0, p2, v1, v2}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    :cond_19
    invoke-virtual {p0}, Landroidx/appcompat/widget/w$c;->dismiss()V

    return-void
.end method

.method public p(Landroid/widget/ListAdapter;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/widget/w$c;->f:Landroid/widget/ListAdapter;

    return-void
.end method
