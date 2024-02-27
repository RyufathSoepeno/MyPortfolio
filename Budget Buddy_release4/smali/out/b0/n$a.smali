.class Lb0/n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb0/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb0/n;->a(Lb0/o;Lb0/i;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb0/i;

.field final synthetic b:Lb0/o;


# direct methods
.method constructor <init>(Lb0/o;Lb0/i;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lb0/n$a;->b:Lb0/o;

    iput-object p2, p0, Lb0/n$a;->a:Lb0/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget-object v0, p0, Lb0/n$a;->a:Lb0/i;

    iget v0, v0, Lb0/i;->c:I

    return v0
.end method

.method public b()Z
    .registers 2

    iget-object v0, p0, Lb0/n$a;->a:Lb0/i;

    invoke-virtual {v0}, Lb0/i;->D()Z

    move-result v0

    return v0
.end method
