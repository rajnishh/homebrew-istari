class Istari < Formula                                                                                                                                                                                       
    desc "Summon Your Engineers — Autonomous AI engineering agents orchestrator"                                                
    homepage "https://github.com/rajnishh/istari-releases"                                                                                                                                                     
    license "MIT"
    version "0.0.1"                                                                                                                                                                                            
                                                                                                                                
    on_macos do                             
      if Hardware::CPU.arm?
        url "https://github.com/rajnishh/istari-releases/releases/download/v0.0.1/ist-darwin-arm64.tar.gz"
        sha256 "de70a490bfb6ad44f66aa6109ddd30a7b05357431497004c3a80de75bc36035a"                                                                                                                              
      end                                                                                                                                                                                                      
    end                                                                                                                                                                                                        
                                                                                                                                                                                                               
    def install                                                                                                                 
      bin.install "ist-darwin-arm64" => "ist"
      bin.install_symlink "ist" => "istari"
    end                                                                                                                                                                                                        
   
    def caveats                                                                                                                                                                                                
      <<~EOS                                                                                                                    
        🧙 Istari installed! Summon Your Engineers.

        Quick start:
          ist setup              # First-time wizard
          ist pick PROJ-1234     # Spawn autonomous agent
          ist dashboard start    # Web dashboard                                                                                                                                                               
      EOS
    end                                                                                                                                                                                                        
                                                                                                                                
    test do                                 
      system "#{bin}/ist", "--help"
    end
  end
