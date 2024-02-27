.class Landroidx/biometric/e$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/biometric/e;->h2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/o<",
        "Landroidx/biometric/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/biometric/e;


# direct methods
.method constructor <init>(Landroidx/biometric/e;)V
    .registers 2

    iput-object p1, p0, Landroidx/biometric/e$d;->a:Landroidx/biometric/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroidx/biometric/d;

    invoke-virtual {p0, p1}, Landroidx/biometric/e$d;->b(Landroidx/biometric/d;)V

    return-void
.end method

.method public b(Landroidx/biometric/d;)V
    .registers 4

    if-eqz p1, :cond_17

    iget-object v0, p0, Landroidx/biometric/e$d;->a:Landroidx/biometric/e;

    invoke-virtual {p1}, Landroidx/biometric/d;->b()I

    move-result v1

    invoke-virtual {p1}, Landroidx/biometric/d;->c()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroidx/biometric/e;->t2(ILjava/lang/CharSequence;)V

    iget-object p1, p0, Landroidx/biometric/e$d;->a:Landroidx/biometric/e;

    iget-object p1, p1, Landroidx/biometric/e;->h0:Landroidx/biometric/k;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/biometric/k;->J(Landroidx/biometric/d;)V

    :cond_17
    return-void
.end method
