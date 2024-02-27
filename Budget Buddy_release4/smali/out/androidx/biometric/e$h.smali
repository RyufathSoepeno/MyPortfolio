.class Landroidx/biometric/e$h;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/biometric/e;


# direct methods
.method constructor <init>(Landroidx/biometric/e;)V
    .registers 2

    iput-object p1, p0, Landroidx/biometric/e$h;->a:Landroidx/biometric/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Landroidx/biometric/e$h;->b(Ljava/lang/Boolean;)V

    return-void
.end method

.method public b(Ljava/lang/Boolean;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_19

    iget-object p1, p0, Landroidx/biometric/e$h;->a:Landroidx/biometric/e;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/biometric/e;->f2(I)V

    iget-object p1, p0, Landroidx/biometric/e$h;->a:Landroidx/biometric/e;

    invoke-virtual {p1}, Landroidx/biometric/e;->i2()V

    iget-object p1, p0, Landroidx/biometric/e$h;->a:Landroidx/biometric/e;

    iget-object p1, p1, Landroidx/biometric/e;->h0:Landroidx/biometric/k;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/biometric/k;->U(Z)V

    :cond_19
    return-void
.end method
