.class public Lx0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj0/a;


# instance fields
.field private a:Ls0/j;

.field private b:Lx0/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ls0/c;Landroid/content/Context;)V
    .registers 5

    new-instance v0, Ls0/j;

    const-string v1, "plugins.flutter.io/shared_preferences_android"

    invoke-direct {v0, p1, v1}, Ls0/j;-><init>(Ls0/c;Ljava/lang/String;)V

    iput-object v0, p0, Lx0/b;->a:Ls0/j;

    new-instance p1, Lx0/a;

    invoke-direct {p1, p2}, Lx0/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lx0/b;->b:Lx0/a;

    iget-object p2, p0, Lx0/b;->a:Ls0/j;

    invoke-virtual {p2, p1}, Ls0/j;->e(Ls0/j$c;)V

    return-void
.end method

.method private b()V
    .registers 3

    iget-object v0, p0, Lx0/b;->b:Lx0/a;

    invoke-virtual {v0}, Lx0/a;->g()V

    const/4 v0, 0x0

    iput-object v0, p0, Lx0/b;->b:Lx0/a;

    iget-object v1, p0, Lx0/b;->a:Ls0/j;

    invoke-virtual {v1, v0}, Ls0/j;->e(Ls0/j$c;)V

    iput-object v0, p0, Lx0/b;->a:Ls0/j;

    return-void
.end method


# virtual methods
.method public f(Lj0/a$b;)V
    .registers 3

    invoke-virtual {p1}, Lj0/a$b;->b()Ls0/c;

    move-result-object v0

    invoke-virtual {p1}, Lj0/a$b;->a()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lx0/b;->a(Ls0/c;Landroid/content/Context;)V

    return-void
.end method

.method public i(Lj0/a$b;)V
    .registers 2

    invoke-direct {p0}, Lx0/b;->b()V

    return-void
.end method
