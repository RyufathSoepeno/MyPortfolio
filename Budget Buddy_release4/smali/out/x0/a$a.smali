.class Lx0/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx0/a;->c(Landroid/content/SharedPreferences$Editor;Ls0/j$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Landroid/content/SharedPreferences$Editor;

.field final synthetic f:Ls0/j$d;

.field final synthetic g:Lx0/a;


# direct methods
.method constructor <init>(Lx0/a;Landroid/content/SharedPreferences$Editor;Ls0/j$d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lx0/a$a;->g:Lx0/a;

    iput-object p2, p0, Lx0/a$a;->e:Landroid/content/SharedPreferences$Editor;

    iput-object p3, p0, Lx0/a$a;->f:Ls0/j$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lx0/a$a;->e:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    iget-object v1, p0, Lx0/a$a;->g:Lx0/a;

    invoke-static {v1}, Lx0/a;->b(Lx0/a;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lx0/a$a$a;

    invoke-direct {v2, p0, v0}, Lx0/a$a$a;-><init>(Lx0/a$a;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
