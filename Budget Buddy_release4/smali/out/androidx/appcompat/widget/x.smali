.class final Landroidx/appcompat/widget/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/view/textclassifier/TextClassifier;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroidx/core/util/d;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Landroidx/appcompat/widget/x;->a:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public a()Landroid/view/textclassifier/TextClassifier;
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/x;->b:Landroid/view/textclassifier/TextClassifier;

    if-nez v0, :cond_1b

    iget-object v0, p0, Landroidx/appcompat/widget/x;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/textclassifier/TextClassificationManager;

    invoke-static {v0, v1}, Ld/e;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassificationManager;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassificationManager;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object v0

    return-object v0

    :cond_19
    sget-object v0, Landroid/view/textclassifier/TextClassifier;->NO_OP:Landroid/view/textclassifier/TextClassifier;

    :cond_1b
    return-object v0
.end method

.method public b(Landroid/view/textclassifier/TextClassifier;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/widget/x;->b:Landroid/view/textclassifier/TextClassifier;

    return-void
.end method
