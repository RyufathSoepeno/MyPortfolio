.class Ld0/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld0/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final a:Ls0/j$d;

.field final synthetic b:Ld0/d;


# direct methods
.method constructor <init>(Ld0/d;Ls0/j$d;)V
    .registers 3

    iput-object p1, p0, Ld0/d$a;->b:Ld0/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ld0/d$a;->a:Ls0/j$d;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Ld0/d$a;->a:Ls0/j$d;

    invoke-interface {v0, p1}, Ls0/j$d;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Ld0/d$a;->a:Ls0/j$d;

    invoke-interface {v0, p1, p2, p3}, Ls0/j$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
