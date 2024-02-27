.class public Landroidx/appcompat/widget/k;
.super Landroid/widget/EditText;
.source "SourceFile"


# instance fields
.field private final e:Landroidx/appcompat/widget/e;

.field private final f:Landroidx/appcompat/widget/e0;

.field private final g:Landroidx/appcompat/widget/x;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lc/a;->A:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/k;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-static {p1}, Landroidx/appcompat/widget/j1;->b(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/appcompat/widget/h1;->a(Landroid/view/View;Landroid/content/Context;)V

    new-instance p1, Landroidx/appcompat/widget/e;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/e;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroidx/appcompat/widget/k;->e:Landroidx/appcompat/widget/e;

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/e;->e(Landroid/util/AttributeSet;I)V

    new-instance p1, Landroidx/appcompat/widget/e0;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/e0;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Landroidx/appcompat/widget/k;->f:Landroidx/appcompat/widget/e0;

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/e0;->m(Landroid/util/AttributeSet;I)V

    invoke-virtual {p1}, Landroidx/appcompat/widget/e0;->b()V

    new-instance p1, Landroidx/appcompat/widget/x;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/x;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Landroidx/appcompat/widget/k;->g:Landroidx/appcompat/widget/x;

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 2

    invoke-super {p0}, Landroid/widget/EditText;->drawableStateChanged()V

    iget-object v0, p0, Landroidx/appcompat/widget/k;->e:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroidx/appcompat/widget/e;->b()V

    :cond_a
    iget-object v0, p0, Landroidx/appcompat/widget/k;->f:Landroidx/appcompat/widget/e0;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroidx/appcompat/widget/e0;->b()V

    :cond_11
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/k;->e:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroidx/appcompat/widget/e;->c()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/k;->e:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroidx/appcompat/widget/e;->d()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getText()Landroid/text/Editable;
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_b

    invoke-super {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0

    :cond_b
    invoke-super {p0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getText()Ljava/lang/CharSequence;
    .registers 2

    invoke-virtual {p0}, Landroidx/appcompat/widget/k;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getTextClassifier()Landroid/view/textclassifier/TextClassifier;
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_10

    iget-object v0, p0, Landroidx/appcompat/widget/k;->g:Landroidx/appcompat/widget/x;

    if-nez v0, :cond_b

    goto :goto_10

    :cond_b
    invoke-virtual {v0}, Landroidx/appcompat/widget/x;->a()Landroid/view/textclassifier/TextClassifier;

    move-result-object v0

    return-object v0

    :cond_10
    :goto_10
    invoke-super {p0}, Landroid/widget/EditText;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object v0

    return-object v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-static {v0, p1, p0}, Landroidx/appcompat/widget/l;->a(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/view/View;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    return-object p1
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroidx/appcompat/widget/k;->e:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/e;->f(Landroid/graphics/drawable/Drawable;)V

    :cond_a
    return-void
.end method

.method public setBackgroundResource(I)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    iget-object v0, p0, Landroidx/appcompat/widget/k;->e:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/e;->g(I)V

    :cond_a
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .registers 2

    invoke-static {p0, p1}, Landroidx/core/widget/p;->m(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/k;->e:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/e;->i(Landroid/content/res/ColorStateList;)V

    :cond_7
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/k;->e:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/e;->j(Landroid/graphics/PorterDuff$Mode;)V

    :cond_7
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, p0, Landroidx/appcompat/widget/k;->f:Landroidx/appcompat/widget/e0;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/e0;->q(Landroid/content/Context;I)V

    :cond_a
    return-void
.end method

.method public setTextClassifier(Landroid/view/textclassifier/TextClassifier;)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_f

    iget-object v0, p0, Landroidx/appcompat/widget/k;->g:Landroidx/appcompat/widget/x;

    if-nez v0, :cond_b

    goto :goto_f

    :cond_b
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/x;->b(Landroid/view/textclassifier/TextClassifier;)V

    return-void

    :cond_f
    :goto_f
    invoke-super {p0, p1}, Landroid/widget/EditText;->setTextClassifier(Landroid/view/textclassifier/TextClassifier;)V

    return-void
.end method
