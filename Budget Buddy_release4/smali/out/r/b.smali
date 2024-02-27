.class Lr/b;
.super Landroid/widget/Filter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr/b$a;
    }
.end annotation


# instance fields
.field a:Lr/b$a;


# direct methods
.method constructor <init>(Lr/b$a;)V
    .registers 2

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    iput-object p1, p0, Lr/b;->a:Lr/b$a;

    return-void
.end method


# virtual methods
.method public convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3

    iget-object v0, p0, Lr/b;->a:Lr/b$a;

    check-cast p1, Landroid/database/Cursor;

    invoke-interface {v0, p1}, Lr/b$a;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .registers 4

    iget-object v0, p0, Lr/b;->a:Lr/b$a;

    invoke-interface {v0, p1}, Lr/b$a;->c(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object p1

    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    if-eqz p1, :cond_14

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    iput v1, v0, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_18

    :cond_14
    const/4 p1, 0x0

    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    const/4 p1, 0x0

    :goto_18
    iput-object p1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    return-object v0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .registers 3

    iget-object p1, p0, Lr/b;->a:Lr/b$a;

    invoke-interface {p1}, Lr/b$a;->b()Landroid/database/Cursor;

    move-result-object p1

    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eqz p2, :cond_13

    if-eq p2, p1, :cond_13

    iget-object p1, p0, Lr/b;->a:Lr/b$a;

    check-cast p2, Landroid/database/Cursor;

    invoke-interface {p1, p2}, Lr/b$a;->a(Landroid/database/Cursor;)V

    :cond_13
    return-void
.end method
