.class Lio/flutter/plugin/editing/e;
.super Landroid/text/SpannableStringBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugin/editing/e$b;
    }
.end annotation


# instance fields
.field private e:I

.field private f:I

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/flutter/plugin/editing/e$b;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/flutter/plugin/editing/e$b;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/flutter/plugin/editing/g;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:Landroid/view/inputmethod/BaseInputConnection;


# direct methods
.method public constructor <init>(Lr0/q$e;Landroid/view/View;)V
    .registers 5

    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lio/flutter/plugin/editing/e;->e:I

    iput v0, p0, Lio/flutter/plugin/editing/e;->f:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/flutter/plugin/editing/e;->g:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/flutter/plugin/editing/e;->h:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/flutter/plugin/editing/e;->i:Ljava/util/ArrayList;

    new-instance v0, Lio/flutter/plugin/editing/e$a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p2, v1, p0}, Lio/flutter/plugin/editing/e$a;-><init>(Lio/flutter/plugin/editing/e;Landroid/view/View;ZLandroid/text/Editable;)V

    iput-object v0, p0, Lio/flutter/plugin/editing/e;->p:Landroid/view/inputmethod/BaseInputConnection;

    if-eqz p1, :cond_2a

    invoke-virtual {p0, p1}, Lio/flutter/plugin/editing/e;->n(Lr0/q$e;)V

    :cond_2a
    return-void
.end method

.method private j(Lio/flutter/plugin/editing/e$b;ZZZ)V
    .registers 6

    iget v0, p0, Lio/flutter/plugin/editing/e;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/flutter/plugin/editing/e;->f:I

    invoke-interface {p1, p2, p3, p4}, Lio/flutter/plugin/editing/e$b;->a(ZZZ)V

    iget p1, p0, Lio/flutter/plugin/editing/e;->f:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lio/flutter/plugin/editing/e;->f:I

    return-void
.end method

.method private k(ZZZ)V
    .registers 6

    if-nez p1, :cond_6

    if-nez p2, :cond_6

    if-eqz p3, :cond_1c

    :cond_6
    iget-object v0, p0, Lio/flutter/plugin/editing/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/plugin/editing/e$b;

    invoke-direct {p0, v1, p1, p2, p3}, Lio/flutter/plugin/editing/e;->j(Lio/flutter/plugin/editing/e$b;ZZZ)V

    goto :goto_c

    :cond_1c
    return-void
.end method


# virtual methods
.method public a(Lio/flutter/plugin/editing/e$b;)V
    .registers 5

    iget v0, p0, Lio/flutter/plugin/editing/e;->f:I

    const-string v1, "ListenableEditingState"

    if-lez v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adding a listener "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in a listener callback"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Le0/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    iget v0, p0, Lio/flutter/plugin/editing/e;->e:I

    if-lez v0, :cond_2f

    const-string v0, "a listener was added to EditingState while a batch edit was in progress"

    invoke-static {v1, v0}, Le0/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/flutter/plugin/editing/e;->h:Ljava/util/ArrayList;

    goto :goto_31

    :cond_2f
    iget-object v0, p0, Lio/flutter/plugin/editing/e;->g:Ljava/util/ArrayList;

    :goto_31
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()V
    .registers 4

    iget v0, p0, Lio/flutter/plugin/editing/e;->e:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lio/flutter/plugin/editing/e;->e:I

    iget v0, p0, Lio/flutter/plugin/editing/e;->f:I

    if-lez v0, :cond_11

    const-string v0, "ListenableEditingState"

    const-string v2, "editing state should not be changed in a listener callback"

    invoke-static {v0, v2}, Le0/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    iget v0, p0, Lio/flutter/plugin/editing/e;->e:I

    if-ne v0, v1, :cond_3b

    iget-object v0, p0, Lio/flutter/plugin/editing/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3b

    invoke-virtual {p0}, Lio/flutter/plugin/editing/e;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/flutter/plugin/editing/e;->k:Ljava/lang/String;

    invoke-virtual {p0}, Lio/flutter/plugin/editing/e;->i()I

    move-result v0

    iput v0, p0, Lio/flutter/plugin/editing/e;->l:I

    invoke-virtual {p0}, Lio/flutter/plugin/editing/e;->h()I

    move-result v0

    iput v0, p0, Lio/flutter/plugin/editing/e;->m:I

    invoke-virtual {p0}, Lio/flutter/plugin/editing/e;->g()I

    move-result v0

    iput v0, p0, Lio/flutter/plugin/editing/e;->n:I

    invoke-virtual {p0}, Lio/flutter/plugin/editing/e;->f()I

    move-result v0

    iput v0, p0, Lio/flutter/plugin/editing/e;->o:I

    :cond_3b
    return-void
.end method

.method public c()V
    .registers 2

    iget-object v0, p0, Lio/flutter/plugin/editing/e;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public d()V
    .registers 7

    iget v0, p0, Lio/flutter/plugin/editing/e;->e:I

    const-string v1, "ListenableEditingState"

    if-nez v0, :cond_c

    const-string v0, "endBatchEdit called without a matching beginBatchEdit"

    invoke-static {v1, v0}, Le0/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    const/4 v2, 0x1

    if-ne v0, v2, :cond_84

    iget-object v0, p0, Lio/flutter/plugin/editing/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/flutter/plugin/editing/e$b;

    invoke-direct {p0, v3, v2, v2, v2}, Lio/flutter/plugin/editing/e;->j(Lio/flutter/plugin/editing/e$b;ZZZ)V

    goto :goto_15

    :cond_25
    iget-object v0, p0, Lio/flutter/plugin/editing/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_84

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "didFinishBatchEdit with "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lio/flutter/plugin/editing/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " listener(s)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Le0/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/flutter/plugin/editing/e;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/plugin/editing/e;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v2

    iget v1, p0, Lio/flutter/plugin/editing/e;->l:I

    invoke-virtual {p0}, Lio/flutter/plugin/editing/e;->i()I

    move-result v3

    const/4 v4, 0x0

    if-ne v1, v3, :cond_6f

    iget v1, p0, Lio/flutter/plugin/editing/e;->m:I

    invoke-virtual {p0}, Lio/flutter/plugin/editing/e;->h()I

    move-result v3

    if-eq v1, v3, :cond_6d

    goto :goto_6f

    :cond_6d
    const/4 v1, 0x0

    goto :goto_70

    :cond_6f
    :goto_6f
    const/4 v1, 0x1

    :goto_70
    iget v3, p0, Lio/flutter/plugin/editing/e;->n:I

    invoke-virtual {p0}, Lio/flutter/plugin/editing/e;->g()I

    move-result v5

    if-ne v3, v5, :cond_80

    iget v3, p0, Lio/flutter/plugin/editing/e;->o:I

    invoke-virtual {p0}, Lio/flutter/plugin/editing/e;->f()I

    move-result v5

    if-eq v3, v5, :cond_81

    :cond_80
    const/4 v4, 0x1

    :cond_81
    invoke-direct {p0, v0, v1, v4}, Lio/flutter/plugin/editing/e;->k(ZZZ)V

    :cond_84
    iget-object v0, p0, Lio/flutter/plugin/editing/e;->g:Ljava/util/ArrayList;

    iget-object v1, p0, Lio/flutter/plugin/editing/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lio/flutter/plugin/editing/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget v0, p0, Lio/flutter/plugin/editing/e;->e:I

    sub-int/2addr v0, v2

    iput v0, p0, Lio/flutter/plugin/editing/e;->e:I

    return-void
.end method

.method public e()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lio/flutter/plugin/editing/g;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/flutter/plugin/editing/e;->i:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lio/flutter/plugin/editing/e;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    return-object v0
.end method

.method public final f()I
    .registers 2

    invoke-static {p0}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v0

    return v0
.end method

.method public final g()I
    .registers 2

    invoke-static {p0}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v0

    return v0
.end method

.method public final h()I
    .registers 2

    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public final i()I
    .registers 2

    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public l(Lio/flutter/plugin/editing/e$b;)V
    .registers 4

    iget v0, p0, Lio/flutter/plugin/editing/e;->f:I

    if-lez v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removing a listener "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in a listener callback"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ListenableEditingState"

    invoke-static {v1, v0}, Le0/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    iget-object v0, p0, Lio/flutter/plugin/editing/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget v0, p0, Lio/flutter/plugin/editing/e;->e:I

    if-lez v0, :cond_31

    iget-object v0, p0, Lio/flutter/plugin/editing/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_31
    return-void
.end method

.method public m(II)V
    .registers 4

    if-ltz p1, :cond_b

    if-lt p1, p2, :cond_5

    goto :goto_b

    :cond_5
    iget-object v0, p0, Lio/flutter/plugin/editing/e;->p:Landroid/view/inputmethod/BaseInputConnection;

    invoke-virtual {v0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setComposingRegion(II)Z

    goto :goto_e

    :cond_b
    :goto_b
    invoke-static {p0}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    :goto_e
    return-void
.end method

.method public n(Lr0/q$e;)V
    .registers 5

    invoke-virtual {p0}, Lio/flutter/plugin/editing/e;->b()V

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    iget-object v1, p1, Lr0/q$e;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Lr0/q$e;->c()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget v0, p1, Lr0/q$e;->b:I

    iget v1, p1, Lr0/q$e;->c:I

    invoke-static {p0, v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_1e

    :cond_1b
    invoke-static {p0}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    :goto_1e
    iget v0, p1, Lr0/q$e;->d:I

    iget p1, p1, Lr0/q$e;->e:I

    invoke-virtual {p0, v0, p1}, Lio/flutter/plugin/editing/e;->m(II)V

    invoke-virtual {p0}, Lio/flutter/plugin/editing/e;->c()V

    invoke-virtual {p0}, Lio/flutter/plugin/editing/e;->d()V

    return-void
.end method

.method public bridge synthetic replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lio/flutter/plugin/editing/e;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    .registers 27

    move-object/from16 v0, p0

    iget v1, v0, Lio/flutter/plugin/editing/e;->f:I

    if-lez v1, :cond_d

    const-string v1, "ListenableEditingState"

    const-string v2, "editing state should not be changed in a listener callback"

    invoke-static {v1, v2}, Le0/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lio/flutter/plugin/editing/e;->toString()Ljava/lang/String;

    move-result-object v2

    sub-int v1, p2, p1

    sub-int v3, p5, p4

    if-eq v1, v3, :cond_19

    const/4 v3, 0x1

    goto :goto_1a

    :cond_19
    const/4 v3, 0x0

    :goto_1a
    move v12, v3

    const/4 v3, 0x0

    :goto_1c
    if-ge v3, v1, :cond_37

    if-nez v12, :cond_37

    add-int v4, p1, v3

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    add-int v5, p4, v3

    move-object/from16 v6, p3

    invoke-interface {v6, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_32

    const/4 v4, 0x1

    goto :goto_33

    :cond_32
    const/4 v4, 0x0

    :goto_33
    or-int/2addr v12, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_37
    move-object/from16 v6, p3

    if-eqz v12, :cond_3e

    const/4 v1, 0x0

    iput-object v1, v0, Lio/flutter/plugin/editing/e;->j:Ljava/lang/String;

    :cond_3e
    invoke-virtual/range {p0 .. p0}, Lio/flutter/plugin/editing/e;->i()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lio/flutter/plugin/editing/e;->h()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lio/flutter/plugin/editing/e;->g()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lio/flutter/plugin/editing/e;->f()I

    move-result v9

    invoke-super/range {p0 .. p5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v16

    iget-object v8, v0, Lio/flutter/plugin/editing/e;->i:Ljava/util/ArrayList;

    new-instance v7, Lio/flutter/plugin/editing/g;

    invoke-virtual/range {p0 .. p0}, Lio/flutter/plugin/editing/e;->i()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lio/flutter/plugin/editing/e;->h()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lio/flutter/plugin/editing/e;->g()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lio/flutter/plugin/editing/e;->f()I

    move-result v20

    move-object v1, v7

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, v17

    move-object v10, v7

    move/from16 v7, v18

    move-object v11, v8

    move/from16 v8, v19

    move/from16 v19, v12

    move v12, v9

    move/from16 v9, v20

    invoke-direct/range {v1 .. v9}, Lio/flutter/plugin/editing/g;-><init>(Ljava/lang/CharSequence;IILjava/lang/CharSequence;IIII)V

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, v0, Lio/flutter/plugin/editing/e;->e:I

    if-lez v1, :cond_85

    return-object v16

    :cond_85
    invoke-virtual/range {p0 .. p0}, Lio/flutter/plugin/editing/e;->i()I

    move-result v1

    if-ne v1, v13, :cond_94

    invoke-virtual/range {p0 .. p0}, Lio/flutter/plugin/editing/e;->h()I

    move-result v1

    if-eq v1, v14, :cond_92

    goto :goto_94

    :cond_92
    const/4 v1, 0x0

    goto :goto_95

    :cond_94
    :goto_94
    const/4 v1, 0x1

    :goto_95
    invoke-virtual/range {p0 .. p0}, Lio/flutter/plugin/editing/e;->g()I

    move-result v2

    if-ne v2, v15, :cond_a6

    invoke-virtual/range {p0 .. p0}, Lio/flutter/plugin/editing/e;->f()I

    move-result v2

    if-eq v2, v12, :cond_a2

    goto :goto_a6

    :cond_a2
    move/from16 v12, v19

    const/4 v10, 0x0

    goto :goto_a9

    :cond_a6
    :goto_a6
    move/from16 v12, v19

    const/4 v10, 0x1

    :goto_a9
    invoke-direct {v0, v12, v1, v10}, Lio/flutter/plugin/editing/e;->k(ZZZ)V

    return-object v16
.end method

.method public setSpan(Ljava/lang/Object;III)V
    .registers 11

    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object p1, p0, Lio/flutter/plugin/editing/e;->i:Ljava/util/ArrayList;

    new-instance p2, Lio/flutter/plugin/editing/g;

    invoke-virtual {p0}, Lio/flutter/plugin/editing/e;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/flutter/plugin/editing/e;->i()I

    move-result v2

    invoke-virtual {p0}, Lio/flutter/plugin/editing/e;->h()I

    move-result v3

    invoke-virtual {p0}, Lio/flutter/plugin/editing/e;->g()I

    move-result v4

    invoke-virtual {p0}, Lio/flutter/plugin/editing/e;->f()I

    move-result v5

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lio/flutter/plugin/editing/g;-><init>(Ljava/lang/CharSequence;IIII)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/flutter/plugin/editing/e;->j:Ljava/lang/String;

    if-eqz v0, :cond_5

    goto :goto_b

    :cond_5
    invoke-super {p0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/flutter/plugin/editing/e;->j:Ljava/lang/String;

    :goto_b
    return-object v0
.end method
