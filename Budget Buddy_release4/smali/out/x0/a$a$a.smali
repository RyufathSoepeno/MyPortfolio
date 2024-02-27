.class Lx0/a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx0/a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Z

.field final synthetic f:Lx0/a$a;


# direct methods
.method constructor <init>(Lx0/a$a;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lx0/a$a$a;->f:Lx0/a$a;

    iput-boolean p2, p0, Lx0/a$a$a;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lx0/a$a$a;->f:Lx0/a$a;

    iget-object v0, v0, Lx0/a$a;->f:Ls0/j$d;

    iget-boolean v1, p0, Lx0/a$a$a;->e:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ls0/j$d;->a(Ljava/lang/Object;)V

    return-void
.end method
