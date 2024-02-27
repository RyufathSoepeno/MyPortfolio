.class Landroidx/appcompat/widget/w0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/w0;->q()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Landroidx/appcompat/widget/w0;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/w0;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/widget/w0$b;->e:Landroidx/appcompat/widget/w0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 p1, -0x1

    if-eq p3, p1, :cond_d

    iget-object p1, p0, Landroidx/appcompat/widget/w0$b;->e:Landroidx/appcompat/widget/w0;

    iget-object p1, p1, Landroidx/appcompat/widget/w0;->g:Landroidx/appcompat/widget/p0;

    if-eqz p1, :cond_d

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/p0;->setListSelectionHidden(Z)V

    :cond_d
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
